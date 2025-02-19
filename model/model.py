import tensorflow as tf
import numpy as np
import os
import pandas as pd
import sys
import math
from tqdm import tqdm
from simulator import DataSimulator, map_encode, map_decode
import random
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt



NUM_EPOCHS = 1 # LD changed to see if real data would train
BATCH_SZ = 32

# add more weight to positives in BCE loss


class SelfAttn(tf.keras.layers.Layer):
    '''
    Standard multi-headed self attention layer
    '''

    def __init__(self, in_shape, out_shape, num_heads, conv_out_shape):
        '''
        Initialize self attention layer.

        Parameters:
        -----------
        in_shape: input window size
        out_shape: output window size
        num_heads: number of self attention heads

        Returns:
        --------
        None
        '''
        super(SelfAttn, self).__init__()

        self.in_shape = in_shape
        self.out_shape = out_shape
        self.num_heads = num_heads
        self.conv_out_shape = conv_out_shape

    def build(self, input_shape=None):
        '''
        Build weights for the self attention layer.

        Parameters:
        -----------
        None

        Returns:
        --------
        None
        '''
        # make list of weight matrices, one for each head (K, Q, V)
        self.K = [self.add_weight(f'K{i}', (self.in_shape, self.out_shape), trainable=True) for i in range(self.num_heads)]
        self.Q = [self.add_weight(f'Q{i}', (self.in_shape, self.out_shape), trainable=True) for i in range(self.num_heads)]
        self.V = [self.add_weight(f'V{i}', (self.in_shape, self.out_shape), trainable=True) for i in range(self.num_heads)]

        # weight matrix for combining head information
        self.W = self.add_weight(f'W', (self.out_shape*self.num_heads, self.out_shape))

    def call(self, inputs):
        '''
        Self attention layer call, with masking as per HW5.

        Parameters:
        -----------
        inputs - inputs over which to compute self attention

        Returns:
        --------
        Result of self attention computation
        '''

        keys, queries, values = inputs, inputs, inputs

        # computing keys, queries, values
        K = [keys @ k for k in self.K]
        Q = [queries @ q for q in self.Q]
        V = [values @ v for v in self.V]

        # computing mask
        mask_vals = np.triu(np.ones((Q[0].shape[-2], K[0].shape[-2])) * np.NINF, k=1)
        mask = tf.convert_to_tensor(value=mask_vals, dtype=tf.float32)
        atten_mask = tf.tile(tf.reshape(mask, [-1, Q[0].shape[-2], K[0].shape[-2]]), [tf.shape(input=K[0])[0], 1, 1])

        # computing a list of single head attentions, concatenated as a tensor  
        # changed to for loop by JC to allow for attention score extraction 
        single_head_attns = []
        running_scores = []
        for q, k, v in zip(Q, K, V):
            attn_scores = tf.nn.softmax(((q @ tf.transpose(k, [0, 2, 1]))/math.sqrt(k.shape[-1])) + atten_mask)
            running_scores.append(attn_scores)
            outs = attn_scores @ v
            single_head_attns.append(outs)
            # print(attn_scores)
        pAttn_concat = tf.concat(running_scores, axis=2)
        single_head_attns = tf.concat(single_head_attns, axis = -1)

        # old code: 
        # single_head_attns = tf.concat([tf.nn.softmax(((q @ tf.transpose(k, [0, 2, 1]))/math.sqrt(k.shape[-1])) + atten_mask) @ v for q, k, v in zip(Q, K, V)], axis=-1)

        # combine single head information via dense layer
        attn_output = single_head_attns @ self.W

        # residual connection
        attn_output += inputs
        
        return attn_output, pAttn_concat

class Model(tf.keras.Model):
    '''
    Our take on the SATORI model!
    '''

    def __init__(self, seq_len, num_channels, num_multi_attention_heads):
        '''
        Set up all necessary layers for model call step.

        Parameters:
        -----------
        seq_len - the length of the input sequences (necessary to deal with 
        None batch size during training)

        Returns:
        --------
        None
        '''

        super(Model, self).__init__()

        self.num_convolutions = 1
        self.convolutions = []
        self.num_channels = num_channels
        self.num_mulit_attention_heads = num_multi_attention_heads

        self.seq_len = seq_len

        self.flatten = tf.keras.layers.Flatten()

        self.num_self_attns = 0
        self.self_attns = []

        self.num_dense = 1
        self.dense = []

        # self.bidirectional_lstm = tf.keras.layers.Bidirectional(tf.keras.layers.LSTM(units=7, return_sequences=True))


        # if we change padding to VALID, will have to compute conv_out_shape 
        # successively for each layer so that we get a correct out_shape to 
        # pass into self attention layer weight build
        for _ in range(self.num_convolutions):
            # note that the 4 here is necessary to make this convolution 
            # essentially 1D, but the 20 and 5 are arbitrary hyperparameters 
            # (although the 20 param should match what we expect to be our 
            # motif lengths, at least for first conv layer)
            self.convolutions.append(tf.keras.layers.Convolution2D(num_channels, (4, 15), (1, 1), padding="VALID"))
            # for promoters, do 8 channels with filter size 15

        # arbitrary second conv
        # self.convolutions.append(tf.keras.layers.Convolution2D(1, (4, 7), (1, 1), padding="SAME"))
        self.convolutions.append(tf.keras.layers.MaxPool2D((1, 15), (1, 5)))

        # 20 and 5 are coming from the max pooling layer here, given prior two
        # convolutions both keep same dimensions
        print("self.seq_len: ", self.seq_len)
        self.conv_out_shape = (self.seq_len - 30)//5 + 1

        # 30 is an arbitrary hyperparam here, feel free to change
        # changed to 96 for the real data
        # 5 is also arbitrary (num of heads)
        self.self_attns.append(SelfAttn(self.num_channels, self.num_channels, self.num_mulit_attention_heads, self.conv_out_shape))
        # for _ in range(self.num_self_attns):
        #     self.self_attns.append(SelfAttn(57, 57, 5))

        # more arbitrary hyperparams
        for _ in range(self.num_dense):
            self.dense.append(tf.keras.layers.Dense(4, activation='leaky_relu'))
        
        # can do 2, softmax (works easier with loss function I've put in) or
        # 1, sigmoid...both should theoretically work, but may have to code 
        # custom loss func as keras BCEs are a little finnicky

        # LD: 2 was not working so I changed to 1 and sigmoid. kept BCE
        # nvm changed it back. think cuz the depth for ohe of labels was set to 2
        self.dense.append(tf.keras.layers.Dense(2, activation='softmax'))

        # LD: there was an unexpected argument issue with this training flag so I took it out
    def call(self, inputs): # Training=False
        '''
        Call function for our SATORI model. Does 1D convolutions, gets rid of 
        the channel dimension, then does self attention and dense layers. 

        Parameters:
        -----------
        inputs - inputs over which to predict label distribution
        training - flag we might use if we do regularization

        Returns:
        --------
        Resulting enhancer label distribution
        '''

        x = tf.one_hot(inputs, 4, axis=1)

        # adding "channel" for conv2D,
        x = tf.expand_dims(x, -1)

        for conv in self.convolutions:
            x = conv(x)

        # removing "channel" for conv2D
        x = tf.reshape(x, (-1, self.conv_out_shape, self.num_channels))

        # LD: add biLSTM here
        # self.bidirectional_lstm(x)

        # x = x + positional_encoding(self.conv_out_shape, self.num_channels)

        for self_attn in self.self_attns:
            x, pAttn_concat = self_attn(x)  # don't need attention scores here 

        x = self.flatten(x)

        for dense in self.dense:
            x = dense(x)
        
        return x
    
    def show_figures(self, history):
        plt.plot(history['auc'])
        plt.plot(history['val_auc'])
        plt.title('model AUC')
        plt.ylabel('AUC')
        plt.xlabel('epoch')
        plt.legend(['train', 'validation'])
        plt.show()

        plt.plot(history['loss'])
        # plt.plot(history['val_loss'])
        plt.title('model loss')
        plt.ylabel('loss')
        plt.xlabel('epoch')
        plt.legend(['train', 'validation'])
        plt.savefig('loss')

def positional_encoding(length, depth):
    ## REFERENCE: https://www.tensorflow.org/text/tutorials/transformer#the_embedding_and_positional_encoding_layer
    ## TODO: Can remove signature
    depth = depth/2
    ## Generate a range of positions and depths 
    positions = np.arange(length)[:, np.newaxis]    # (seq, 1)
    depths = np.arange(depth)[np.newaxis, :]/depth  # (1, depth)
    ## Compute range of radians to take the sine and cosine of.
    angle_rates = 1 / (10000**depths)               # (1, depth)
    angle_rads = positions * angle_rates            # (pos, depth)
    pos_encoding = np.concatenate([np.sin(angle_rads), np.cos(angle_rads)], axis=-1) 
    ## This serves as offset for the Positional Encoding
    return tf.cast(pos_encoding, dtype=tf.float32)

if __name__ == '__main__':

    # sequence length 300 is arbitrary here
    seq_len = 300
    num_channels = 8
    num_multi_attention_heads = 2
    model = Model(seq_len, num_channels, num_multi_attention_heads)

    if len(sys.argv) > 1 and sys.argv[1] == '--simulate':
        tf.random.set_seed(0)
        random.seed(0)
        sim_data = DataSimulator("PWM")

        # motifs also arbitrary, maybe try pushing up to match convolution length 
        # dim of 20
        # ttk = np.loadtxt('simulated_results/ttk.txt')
        # clamp = np.loadtxt('simulated_results/clamp.txt')
        # neo = np.loadtxt('simulated_results/neo38.txt')
        # deaf = np.loadtxt('simulated_results/deaf1.txt')
        clamp = np.transpose(np.genfromtxt('simulated_results/clamp_meme.txt'))
        ttk = np.transpose(np.genfromtxt('simulated_results/ttk_meme.txt'))
        neo = np.transpose(np.genfromtxt('simulated_results/neo38_meme.txt'))
        blimp = np.transpose(np.genfromtxt('simulated_results/blimp1.txt'))
        sim_data.add_interactions([(('ttk', ttk), ('neo', neo)), (('clamp', clamp), ('blimp', blimp))])

        #((name, pwm), (name, pwm))

        # rest should be fairly self explanatory here
        pos, neg, pos_labels, neg_labels = sim_data.simulate(300, 50000, True)

        # try making fastas for testing with real satori
        # seqs = [map_decode(seq) for seq in batch_seqs.numpy()]

        train_X = tf.concat([pos, neg], axis=0)
        train_y = tf.concat([pos_labels, neg_labels], axis=0)

        train_y = tf.one_hot(train_y,2)

        # testing
        test_pos, test_neg, test_pos_labels, test_neg_labels = sim_data.simulate(300, 1000, True)

        test_X = tf.concat([test_pos, test_neg], axis=0)
        test_y = tf.concat([test_pos_labels, test_neg_labels], axis=0)

        test_y = tf.one_hot(test_y,2)
    # use data from FASTA file
    else:
        seqs = []
        with open(sys.argv[1] + '.fa', 'r') as f:
            i = 1
            for line in f:
                # every other line of a fasta file contains a sequence
                if i % 2 == 0:
                    seqs.append(line.rstrip().upper())
                i += 1
        
        # convert 'N'and 'H' to random base
        DNAalphabet = {'A': '0', 'C': '1', 'G': '2', 'T': '3'}
        for i in range(len(seqs)):
            seqs[i] = seqs[i].replace('N', random.choice(list(DNAalphabet.keys())))
            # NOT QUITE sure what to do with H, not in satori
            seqs[i] = seqs[i].replace('H', random.choice(list(DNAalphabet.keys())))
            seqs[i] = seqs[i].replace('R',list(DNAalphabet.keys())[random.choice([0,2])])
            # Why is there a 4 lol? 
            # seqs[i] = seqs[i].replace("4", random.choice(list(DNAalphabet.keys())))
        # convert DNA sequences to vectors of 0,1,2,3
        train_X = tf.convert_to_tensor([map_encode(x) for x in seqs])
        
        # get label information
        bed = pd.read_csv(sys.argv[1] + '.txt', sep = '\t', header = None)
        train_y = tf.one_hot(tf.convert_to_tensor(bed[3]), depth=2)

    split_ratio = 0.8  # IDK what is is for simulated currently? didn't look thru the code

    # maybe this is dumb: converting to numpy 
    train_X_numpy = train_X.numpy()
    train_y_numpy = train_y.numpy()
    
    train_X_numpy, test_X_numpy, train_y_numpy, test_y_numpy = train_test_split(train_X_numpy, train_y_numpy, test_size=1 - split_ratio, random_state=42)
    train_X_numpy, val_X_numpy, train_y_numpy, val_y_numpy = train_test_split(train_X_numpy, train_y_numpy, test_size=0.25, random_state=42)


    # converting back to tensors
    train_X = tf.convert_to_tensor(train_X_numpy)
    test_X = tf.convert_to_tensor(test_X_numpy)
    train_y = tf.convert_to_tensor(train_y_numpy)
    test_y = tf.convert_to_tensor(test_y_numpy)
    val_X = tf.convert_to_tensor(val_X_numpy)
    val_y = tf.convert_to_tensor(val_y_numpy)

    inds = tf.random.shuffle(tf.range(train_X.shape[0]))

    model.call(train_X)

    train_X = tf.gather(train_X, inds)
    train_y = tf.gather(train_y, inds)

    model.compile(
        optimizer=tf.keras.optimizers.legacy.Adam(),
        loss=tf.keras.losses.BinaryCrossentropy(),
        metrics=[
        tf.keras.metrics.AUC(
            num_thresholds=200,
            curve='ROC',
            summation_method='interpolation',
            name='auc',  # Training AUC
            dtype=None,
            thresholds=None,
            multi_label=False,
            num_labels=None,
            label_weights=None,
            from_logits=False
        ),
        tf.keras.metrics.AUC(
            num_thresholds=200,
            curve='ROC',
            summation_method='interpolation',
            name='val_auc',  # validation
            dtype=None,
            thresholds=None,
            multi_label=False,
            num_labels=None,
            label_weights=None,
            from_logits=False
        )
    ]
)
    history = model.fit(train_X, train_y, BATCH_SZ, NUM_EPOCHS, validation_data=(val_X, val_y))
    # model.show_figures(history.history)

    model.save("simulated_results/pwm_severed/model_simulate_test.hd5")

    # model.show_figures(history.history)
    # testing
    inds = tf.random.shuffle(tf.range(test_X.shape[0]))

    test_X = tf.gather(test_X, inds)
    test_y = tf.gather(test_y, inds)

    import pickle as pkl
    with open('simulated_results/pwm_severed/test_X.pkl', 'wb') as f:
        pkl.dump(test_X, f)
    with open('simulated_results/pwm_severed/test_y.pkl', 'wb') as f:
        pkl.dump(test_y, f)

    print(model.test_on_batch(test_X, test_y))

    # single_pos, single_neg, single_pos_labels, single_neg_labels = sim_data.simulate(300, 100, True)
    # print(single_pos[0].numpy())
    # print(map_decode(single_pos[0].numpy()))
    # print(tf.expand_dims(single_pos[0], axis=0).shape, tf.one_hot(tf.expand_dims(single_pos_labels[0], axis=0),2).shape)
    # print(model(tf.expand_dims(single_pos[0], axis=0)))
    # print(model.test_on_batch(single_pos, tf.one_hot(single_pos_labels,2)))

    # print(test_y[0], model.call(tf.expand_dims(test_X[0], 0)))
    # print(test_y[5], model.call(tf.expand_dims(test_X[5], 0)))
    # print(test_y[7], model.call(tf.expand_dims(test_X[7], 0)))

    
