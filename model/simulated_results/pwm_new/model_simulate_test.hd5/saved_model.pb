Ä­
Ä§
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ÍĚL>"
Ttype0:
2
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeíout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.12.02unknown8úń
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¸*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	¸*
dtype0

Adam/self_attn/W/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_nameAdam/self_attn/W/v
y
&Adam/self_attn/W/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/W/v*
_output_shapes

:*
dtype0

Adam/self_attn/V1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V1/v
{
'Adam/self_attn/V1/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V1/v*
_output_shapes

:*
dtype0

Adam/self_attn/V0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V0/v
{
'Adam/self_attn/V0/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V0/v*
_output_shapes

:*
dtype0

Adam/self_attn/Q1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q1/v
{
'Adam/self_attn/Q1/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q1/v*
_output_shapes

:*
dtype0

Adam/self_attn/Q0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q0/v
{
'Adam/self_attn/Q0/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q0/v*
_output_shapes

:*
dtype0

Adam/self_attn/K1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K1/v
{
'Adam/self_attn/K1/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K1/v*
_output_shapes

:*
dtype0

Adam/self_attn/K0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K0/v
{
'Adam/self_attn/K0/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K0/v*
_output_shapes

:*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¸*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	¸*
dtype0

Adam/self_attn/W/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_nameAdam/self_attn/W/m
y
&Adam/self_attn/W/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/W/m*
_output_shapes

:*
dtype0

Adam/self_attn/V1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V1/m
{
'Adam/self_attn/V1/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V1/m*
_output_shapes

:*
dtype0

Adam/self_attn/V0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V0/m
{
'Adam/self_attn/V0/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V0/m*
_output_shapes

:*
dtype0

Adam/self_attn/Q1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q1/m
{
'Adam/self_attn/Q1/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q1/m*
_output_shapes

:*
dtype0

Adam/self_attn/Q0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q0/m
{
'Adam/self_attn/Q0/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q0/m*
_output_shapes

:*
dtype0

Adam/self_attn/K1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K1/m
{
'Adam/self_attn/K1/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K1/m*
_output_shapes

:*
dtype0

Adam/self_attn/K0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K0/m
{
'Adam/self_attn/K0/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K0/m*
_output_shapes

:*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:Č*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:Č*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:Č*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:Č*
dtype0
{
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*"
shared_namefalse_negatives_1
t
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes	
:Č*
dtype0
{
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*"
shared_namefalse_positives_1
t
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes	
:Č*
dtype0
y
true_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*!
shared_nametrue_negatives_1
r
$true_negatives_1/Read/ReadVariableOpReadVariableOptrue_negatives_1*
_output_shapes	
:Č*
dtype0
y
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*!
shared_nametrue_positives_1
r
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes	
:Č*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¸*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	¸*
dtype0
r
self_attn/WVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/W
k
self_attn/W/Read/ReadVariableOpReadVariableOpself_attn/W*
_output_shapes

:*
dtype0
t
self_attn/V1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/V1
m
 self_attn/V1/Read/ReadVariableOpReadVariableOpself_attn/V1*
_output_shapes

:*
dtype0
t
self_attn/V0VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/V0
m
 self_attn/V0/Read/ReadVariableOpReadVariableOpself_attn/V0*
_output_shapes

:*
dtype0
t
self_attn/Q1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/Q1
m
 self_attn/Q1/Read/ReadVariableOpReadVariableOpself_attn/Q1*
_output_shapes

:*
dtype0
t
self_attn/Q0VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/Q0
m
 self_attn/Q0/Read/ReadVariableOpReadVariableOpself_attn/Q0*
_output_shapes

:*
dtype0
t
self_attn/K1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/K1
m
 self_attn/K1/Read/ReadVariableOpReadVariableOpself_attn/K1*
_output_shapes

:*
dtype0
t
self_attn/K0VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/K0
m
 self_attn/K0/Read/ReadVariableOpReadVariableOpself_attn/K0*
_output_shapes

:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
|
serving_default_input_1Placeholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź*
dtype0*
shape:˙˙˙˙˙˙˙˙˙Ź

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasself_attn/K0self_attn/K1self_attn/Q0self_attn/Q1self_attn/V0self_attn/V1self_attn/Wdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_99316

NoOpNoOp
ŕS
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueSBS BS

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
convolutions
	flatten


self_attns
	dense
	optimizer

signatures*
b
0
1
2
3
4
5
6
7
8
9
10
11
12*
b
0
1
2
3
4
5
6
7
8
9
10
11
12*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

 trace_0
!trace_1* 

"trace_0
#trace_1* 
* 

$0
%1*

&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 

,0*

-0
.1*
Č
/iter

0beta_1

1beta_2
	2decay
3learning_ratemmmmmmmmmmmmm vĄv˘vŁv¤vĽvŚv§v¨vŠvŞvŤvŹv­*

4serving_default* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/K0&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/K1&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/Q0&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/Q1&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/V0&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/V1&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEself_attn/W&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
$0
%1
	2
,3
-4
.5*

50
61
72*
* 
* 
* 
* 
* 
* 
Č
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

kernel
bias
 >_jit_compiled_convolution_op*

?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
* 
* 
* 

Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

Jtrace_0* 

Ktrace_0* 
Ü
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
K0
K1
RK
Q0
Q1
SQ
V0
V1
TV
W*
Ś
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

kernel
bias*
Ś
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
bias*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
8
a	variables
b	keras_api
	ctotal
	dcount*
t
e	variables
f	keras_api
gtrue_positives
htrue_negatives
ifalse_positives
jfalse_negatives*
t
k	variables
l	keras_api
mtrue_positives
ntrue_negatives
ofalse_positives
pfalse_negatives*

0
1*

0
1*
* 

qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

vtrace_0* 

wtrace_0* 
* 
* 
* 
* 

xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

}trace_0* 

~trace_0* 
* 
* 
* 
* 
* 
* 
* 
5
0
1
2
3
4
5
6*
5
0
1
2
3
4
5
6*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

trace_0* 

trace_0* 

0
1*

0
1*

0
1*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

trace_0* 

trace_0* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

trace_0* 

trace_0* 

c0
d1*

a	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
 
g0
h1
i2
j3*

e	variables*
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEtrue_negatives_1=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
 
m0
n1
o2
p3*

k	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
pj
VARIABLE_VALUEAdam/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K0/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K1/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q0/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q1/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/V0/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/V1/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/self_attn/W/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_1/kernel/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_1/bias/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K0/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K1/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q0/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q1/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/V0/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/V1/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/self_attn/W/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_1/kernel/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_1/bias/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 


StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasself_attn/K0self_attn/K1self_attn/Q0self_attn/Q1self_attn/V0self_attn/V1self_attn/Wdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttrue_positives_1true_negatives_1false_positives_1false_negatives_1true_positivestrue_negativesfalse_positivesfalse_negativesAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/self_attn/K0/mAdam/self_attn/K1/mAdam/self_attn/Q0/mAdam/self_attn/Q1/mAdam/self_attn/V0/mAdam/self_attn/V1/mAdam/self_attn/W/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/self_attn/K0/vAdam/self_attn/K1/vAdam/self_attn/Q0/vAdam/self_attn/Q1/vAdam/self_attn/V0/vAdam/self_attn/V1/vAdam/self_attn/W/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vConst*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_99957


StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasself_attn/K0self_attn/K1self_attn/Q0self_attn/Q1self_attn/V0self_attn/V1self_attn/Wdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttrue_positives_1true_negatives_1false_positives_1false_negatives_1true_positivestrue_negativesfalse_positivesfalse_negativesAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/self_attn/K0/mAdam/self_attn/K1/mAdam/self_attn/Q0/mAdam/self_attn/Q1/mAdam/self_attn/V0/mAdam/self_attn/V1/mAdam/self_attn/W/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/self_attn/K0/vAdam/self_attn/K1/vAdam/self_attn/Q0/vAdam/self_attn/Q1/vAdam/self_attn/V0/vAdam/self_attn/V1/vAdam/self_attn/W/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_100129đ
˝

%__inference_dense_layer_call_fn_99579

inputs
unknown:	¸
	unknown_0:
identity˘StatefulPartitionedCallŐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_99087o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙¸: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
 
_user_specified_nameinputs
˛
I
-__inference_max_pooling2d_layer_call_fn_99478

inputs
identityÖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_98950
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


ó
B__inference_dense_1_layer_call_and_return_conditional_losses_99610

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ó
#__inference_signature_wrapper_99316
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	¸
	unknown_9:

unknown_10:

unknown_11:
identity˘StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_98944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙Ź: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
!
_user_specified_name	input_1
 %

@__inference_model_layer_call_and_return_conditional_losses_99111
input_1&
conv2d_98977:
conv2d_98979:!
self_attn_99052:!
self_attn_99054:!
self_attn_99056:!
self_attn_99058:!
self_attn_99060:!
self_attn_99062:!
self_attn_99064:
dense_99088:	¸
dense_99090:
dense_1_99105:
dense_1_99107:
identity˘conv2d/StatefulPartitionedCall˘dense/StatefulPartitionedCall˘dense_1/StatefulPartitionedCall˘!self_attn/StatefulPartitionedCallU
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    O
one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ś
one_hotOneHotinput_1one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
TI0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź*

axisY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙~

ExpandDims
ExpandDimsone_hot:output:0ExpandDims/dim:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Źű
conv2d/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv2d_98977conv2d_98979*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_98976ę
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙7* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_98950b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7      
ReshapeReshape&max_pooling2d/PartitionedCall:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7ö
!self_attn/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0self_attn_99052self_attn_99054self_attn_99056self_attn_99058self_attn_99060self_attn_99062self_attn_99064*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:˙˙˙˙˙˙˙˙˙7:˙˙˙˙˙˙˙˙˙7n*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_self_attn_layer_call_and_return_conditional_losses_99051Ú
flatten/PartitionedCallPartitionedCall*self_attn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_99074ű
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_99088dense_99090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_99087
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_99105dense_1_99107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_99104w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
NoOpNoOp^conv2d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^self_attn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙Ź: : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!self_attn/StatefulPartitionedCall!self_attn/StatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
!
_user_specified_name	input_1
Ş

ú
A__inference_conv2d_layer_call_and_return_conditional_losses_98976

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙Ź: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
 
_user_specified_nameinputs
ô

ť
)__inference_self_attn_layer_call_fn_99504

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity

identity_1˘StatefulPartitionedCallś
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:˙˙˙˙˙˙˙˙˙7:˙˙˙˙˙˙˙˙˙7n*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_self_attn_layer_call_and_return_conditional_losses_99051s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7u

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙7: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
 
_user_specified_nameinputs
ź
^
B__inference_flatten_layer_call_and_return_conditional_losses_99454

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙¸  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙7:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
 
_user_specified_nameinputs
Ľ
Ô
%__inference_model_layer_call_fn_99347

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	¸
	unknown_9:

unknown_10:

unknown_11:
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_99159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙Ź: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_99483

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˛Ó

 __inference__wrapped_model_98944
input_1E
+model_conv2d_conv2d_readvariableop_resource::
,model_conv2d_biasadd_readvariableop_resource:@
.model_self_attn_matmul_readvariableop_resource:B
0model_self_attn_matmul_1_readvariableop_resource:B
0model_self_attn_matmul_2_readvariableop_resource:B
0model_self_attn_matmul_3_readvariableop_resource:B
0model_self_attn_matmul_4_readvariableop_resource:B
0model_self_attn_matmul_5_readvariableop_resource:C
1model_self_attn_matmul_10_readvariableop_resource:=
*model_dense_matmul_readvariableop_resource:	¸9
+model_dense_biasadd_readvariableop_resource:>
,model_dense_1_matmul_readvariableop_resource:;
-model_dense_1_biasadd_readvariableop_resource:
identity˘#model/conv2d/BiasAdd/ReadVariableOp˘"model/conv2d/Conv2D/ReadVariableOp˘"model/dense/BiasAdd/ReadVariableOp˘!model/dense/MatMul/ReadVariableOp˘$model/dense_1/BiasAdd/ReadVariableOp˘#model/dense_1/MatMul/ReadVariableOp˘%model/self_attn/matmul/ReadVariableOp˘'model/self_attn/matmul_1/ReadVariableOp˘(model/self_attn/matmul_10/ReadVariableOp˘'model/self_attn/matmul_2/ReadVariableOp˘'model/self_attn/matmul_3/ReadVariableOp˘'model/self_attn/matmul_4/ReadVariableOp˘'model/self_attn/matmul_5/ReadVariableOp[
model/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
model/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    U
model/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :Î
model/one_hotOneHotinput_1model/one_hot/depth:output:0model/one_hot/on_value:output:0 model/one_hot/off_value:output:0*
TI0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź*

axis_
model/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
model/ExpandDims
ExpandDimsmodel/one_hot:output:0model/ExpandDims/dim:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Č
model/conv2d/Conv2DConv2Dmodel/ExpandDims:output:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ľ
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˛
model/max_pooling2d/MaxPoolMaxPoolmodel/conv2d/BiasAdd:output:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙7*
ksize
*
paddingVALID*
strides
h
model/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7      
model/ReshapeReshape$model/max_pooling2d/MaxPool:output:0model/Reshape/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
%model/self_attn/matmul/ReadVariableOpReadVariableOp.model_self_attn_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¤
model/self_attn/matmulBatchMatMulV2model/Reshape:output:0-model/self_attn/matmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
'model/self_attn/matmul_1/ReadVariableOpReadVariableOp0model_self_attn_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¨
model/self_attn/matmul_1BatchMatMulV2model/Reshape:output:0/model/self_attn/matmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
'model/self_attn/matmul_2/ReadVariableOpReadVariableOp0model_self_attn_matmul_2_readvariableop_resource*
_output_shapes

:*
dtype0¨
model/self_attn/matmul_2BatchMatMulV2model/Reshape:output:0/model/self_attn/matmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
'model/self_attn/matmul_3/ReadVariableOpReadVariableOp0model_self_attn_matmul_3_readvariableop_resource*
_output_shapes

:*
dtype0¨
model/self_attn/matmul_3BatchMatMulV2model/Reshape:output:0/model/self_attn/matmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
'model/self_attn/matmul_4/ReadVariableOpReadVariableOp0model_self_attn_matmul_4_readvariableop_resource*
_output_shapes

:*
dtype0¨
model/self_attn/matmul_4BatchMatMulV2model/Reshape:output:0/model/self_attn/matmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
'model/self_attn/matmul_5/ReadVariableOpReadVariableOp0model_self_attn_matmul_5_readvariableop_resource*
_output_shapes

:*
dtype0¨
model/self_attn/matmul_5BatchMatMulV2model/Reshape:output:0/model/self_attn/matmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7Ž_
model/self_attn/ConstConst*
_output_shapes

:77*
dtype0*ŕ^
valueÖ^BÓ^77"Ä^      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                              ˙  ˙  ˙  ˙                                                                                                                                                                                                                  ˙  ˙  ˙                                                                                                                                                                                                                      ˙  ˙                                                                                                                                                                                                                          ˙                                                                                                                                                                                                                            r
model/self_attn/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   7   
model/self_attn/ReshapeReshapemodel/self_attn/Const:output:0&model/self_attn/Reshape/shape:output:0*
T0*"
_output_shapes
:77r
model/self_attn/ShapeShapemodel/self_attn/matmul:output:0*
T0*
_output_shapes
::íĎm
#model/self_attn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model/self_attn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model/self_attn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
model/self_attn/strided_sliceStridedSlicemodel/self_attn/Shape:output:0,model/self_attn/strided_slice/stack:output:0.model/self_attn/strided_slice/stack_1:output:0.model/self_attn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model/self_attn/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :b
 model/self_attn/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :Ň
model/self_attn/Tile/multiplesPack&model/self_attn/strided_slice:output:0)model/self_attn/Tile/multiples/1:output:0)model/self_attn/Tile/multiples/2:output:0*
N*
T0*
_output_shapes
:
model/self_attn/TileTile model/self_attn/Reshape:output:0'model/self_attn/Tile/multiples:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77h
model/self_attn/zerosConst* 
_output_shapes
:
 7n*
dtype0*
valueB
 7ns
model/self_attn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ś
model/self_attn/transpose	Transposemodel/self_attn/matmul:output:0'model/self_attn/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7Ą
model/self_attn/matmul_6BatchMatMulV2!model/self_attn/matmul_2:output:0model/self_attn/transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77^
model/self_attn/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@
model/self_attn/truedivRealDiv!model/self_attn/matmul_6:output:0"model/self_attn/truediv/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77
model/self_attn/addAddV2model/self_attn/truediv:z:0model/self_attn/Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77q
model/self_attn/SoftmaxSoftmaxmodel/self_attn/add:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77Ľ
model/self_attn/matmul_7BatchMatMulV2!model/self_attn/Softmax:softmax:0!model/self_attn/matmul_4:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7t
model/self_attn/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   §
model/self_attn/Reshape_1Reshape!model/self_attn/Softmax:softmax:0(model/self_attn/Reshape_1/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7n]
model/self_attn/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
model/self_attn/concatConcatV2model/self_attn/zeros:output:0"model/self_attn/Reshape_1:output:0$model/self_attn/concat/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nu
 model/self_attn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
model/self_attn/transpose_1	Transpose!model/self_attn/matmul_1:output:0)model/self_attn/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7Ł
model/self_attn/matmul_8BatchMatMulV2!model/self_attn/matmul_3:output:0model/self_attn/transpose_1:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77`
model/self_attn/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@Ł
model/self_attn/truediv_1RealDiv!model/self_attn/matmul_8:output:0$model/self_attn/truediv_1/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77
model/self_attn/add_1AddV2model/self_attn/truediv_1:z:0model/self_attn/Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77u
model/self_attn/Softmax_1Softmaxmodel/self_attn/add_1:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77§
model/self_attn/matmul_9BatchMatMulV2#model/self_attn/Softmax_1:softmax:0!model/self_attn/matmul_5:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7t
model/self_attn/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   Š
model/self_attn/Reshape_2Reshape#model/self_attn/Softmax_1:softmax:0(model/self_attn/Reshape_2/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7n_
model/self_attn/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Đ
model/self_attn/concat_1ConcatV2model/self_attn/concat:output:0"model/self_attn/Reshape_2:output:0&model/self_attn/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nh
model/self_attn/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ń
model/self_attn/concat_2ConcatV2!model/self_attn/matmul_7:output:0!model/self_attn/matmul_9:output:0&model/self_attn/concat_2/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
(model/self_attn/matmul_10/ReadVariableOpReadVariableOp1model_self_attn_matmul_10_readvariableop_resource*
_output_shapes

:*
dtype0ľ
model/self_attn/matmul_10BatchMatMulV2!model/self_attn/concat_2:output:00model/self_attn/matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
model/self_attn/add_2AddV2"model/self_attn/matmul_10:output:0model/Reshape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙¸  
model/flatten/ReshapeReshapemodel/self_attn/add_2:z:0model/flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	¸*
dtype0
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
model/dense/LeakyRelu	LeakyRelumodel/dense/BiasAdd:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0˘
model/dense_1/MatMulMatMul#model/dense/LeakyRelu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
model/dense_1/SoftmaxSoftmaxmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n
IdentityIdentitymodel/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ě
NoOpNoOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp&^model/self_attn/matmul/ReadVariableOp(^model/self_attn/matmul_1/ReadVariableOp)^model/self_attn/matmul_10/ReadVariableOp(^model/self_attn/matmul_2/ReadVariableOp(^model/self_attn/matmul_3/ReadVariableOp(^model/self_attn/matmul_4/ReadVariableOp(^model/self_attn/matmul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙Ź: : : : : : : : : : : : : 2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2N
%model/self_attn/matmul/ReadVariableOp%model/self_attn/matmul/ReadVariableOp2R
'model/self_attn/matmul_1/ReadVariableOp'model/self_attn/matmul_1/ReadVariableOp2T
(model/self_attn/matmul_10/ReadVariableOp(model/self_attn/matmul_10/ReadVariableOp2R
'model/self_attn/matmul_2/ReadVariableOp'model/self_attn/matmul_2/ReadVariableOp2R
'model/self_attn/matmul_3/ReadVariableOp'model/self_attn/matmul_3/ReadVariableOp2R
'model/self_attn/matmul_4/ReadVariableOp'model/self_attn/matmul_4/ReadVariableOp2R
'model/self_attn/matmul_5/ReadVariableOp'model/self_attn/matmul_5/ReadVariableOp:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
!
_user_specified_name	input_1
č

&__inference_conv2d_layer_call_fn_99463

inputs!
unknown:
	unknown_0:
identity˘StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_98976x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙Ź: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
 
_user_specified_nameinputs
Ł
C
'__inference_flatten_layer_call_fn_99448

inputs
identityŽ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_99074a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙7:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
 
_user_specified_nameinputs
Ş

ú
A__inference_conv2d_layer_call_and_return_conditional_losses_99473

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙Ź: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
 
_user_specified_nameinputs
Ą

ň
@__inference_dense_layer_call_and_return_conditional_losses_99590

inputs1
matmul_readvariableop_resource:	¸-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¸*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙¸: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
 
_user_specified_nameinputs
őá
´ 
"__inference__traced_restore_100129
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:1
assignvariableop_2_self_attn_k0:1
assignvariableop_3_self_attn_k1:1
assignvariableop_4_self_attn_q0:1
assignvariableop_5_self_attn_q1:1
assignvariableop_6_self_attn_v0:1
assignvariableop_7_self_attn_v1:0
assignvariableop_8_self_attn_w:2
assignvariableop_9_dense_kernel:	¸,
assignvariableop_10_dense_bias:4
"assignvariableop_11_dense_1_kernel:.
 assignvariableop_12_dense_1_bias:'
assignvariableop_13_adam_iter:	 )
assignvariableop_14_adam_beta_1: )
assignvariableop_15_adam_beta_2: (
assignvariableop_16_adam_decay: 0
&assignvariableop_17_adam_learning_rate: #
assignvariableop_18_total: #
assignvariableop_19_count: 3
$assignvariableop_20_true_positives_1:	Č3
$assignvariableop_21_true_negatives_1:	Č4
%assignvariableop_22_false_positives_1:	Č4
%assignvariableop_23_false_negatives_1:	Č1
"assignvariableop_24_true_positives:	Č1
"assignvariableop_25_true_negatives:	Č2
#assignvariableop_26_false_positives:	Č2
#assignvariableop_27_false_negatives:	ČB
(assignvariableop_28_adam_conv2d_kernel_m:4
&assignvariableop_29_adam_conv2d_bias_m:9
'assignvariableop_30_adam_self_attn_k0_m:9
'assignvariableop_31_adam_self_attn_k1_m:9
'assignvariableop_32_adam_self_attn_q0_m:9
'assignvariableop_33_adam_self_attn_q1_m:9
'assignvariableop_34_adam_self_attn_v0_m:9
'assignvariableop_35_adam_self_attn_v1_m:8
&assignvariableop_36_adam_self_attn_w_m::
'assignvariableop_37_adam_dense_kernel_m:	¸3
%assignvariableop_38_adam_dense_bias_m:;
)assignvariableop_39_adam_dense_1_kernel_m:5
'assignvariableop_40_adam_dense_1_bias_m:B
(assignvariableop_41_adam_conv2d_kernel_v:4
&assignvariableop_42_adam_conv2d_bias_v:9
'assignvariableop_43_adam_self_attn_k0_v:9
'assignvariableop_44_adam_self_attn_k1_v:9
'assignvariableop_45_adam_self_attn_q0_v:9
'assignvariableop_46_adam_self_attn_q1_v:9
'assignvariableop_47_adam_self_attn_v0_v:9
'assignvariableop_48_adam_self_attn_v1_v:8
&assignvariableop_49_adam_self_attn_w_v::
'assignvariableop_50_adam_dense_kernel_v:	¸3
%assignvariableop_51_adam_dense_bias_v:;
)assignvariableop_52_adam_dense_1_kernel_v:5
'assignvariableop_53_adam_dense_1_bias_v:
identity_55˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_40˘AssignVariableOp_41˘AssignVariableOp_42˘AssignVariableOp_43˘AssignVariableOp_44˘AssignVariableOp_45˘AssignVariableOp_46˘AssignVariableOp_47˘AssignVariableOp_48˘AssignVariableOp_49˘AssignVariableOp_5˘AssignVariableOp_50˘AssignVariableOp_51˘AssignVariableOp_52˘AssignVariableOp_53˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9Ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ů
valueďBě7B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHß
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ´
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ň
_output_shapesß
Ü:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ą
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ľ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_2AssignVariableOpassignvariableop_2_self_attn_k0Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_3AssignVariableOpassignvariableop_3_self_attn_k1Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_4AssignVariableOpassignvariableop_4_self_attn_q0Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_5AssignVariableOpassignvariableop_5_self_attn_q1Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_6AssignVariableOpassignvariableop_6_self_attn_v0Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_7AssignVariableOpassignvariableop_7_self_attn_v1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ľ
AssignVariableOp_8AssignVariableOpassignvariableop_8_self_attn_wIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_10AssignVariableOpassignvariableop_10_dense_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_1_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:š
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_1_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:ś
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_iterIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_2Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_decayIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_20AssignVariableOp$assignvariableop_20_true_positives_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_21AssignVariableOp$assignvariableop_21_true_negatives_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_22AssignVariableOp%assignvariableop_22_false_positives_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_23AssignVariableOp%assignvariableop_23_false_negatives_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_24AssignVariableOp"assignvariableop_24_true_positivesIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_25AssignVariableOp"assignvariableop_25_true_negativesIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ź
AssignVariableOp_26AssignVariableOp#assignvariableop_26_false_positivesIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ź
AssignVariableOp_27AssignVariableOp#assignvariableop_27_false_negativesIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_kernel_mIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_conv2d_bias_mIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_self_attn_k0_mIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_self_attn_k1_mIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_self_attn_q0_mIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_self_attn_q1_mIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_self_attn_v0_mIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_self_attn_v1_mIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_self_attn_w_mIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_kernel_mIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_38AssignVariableOp%assignvariableop_38_adam_dense_bias_mIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_1_kernel_mIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_1_bias_mIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv2d_kernel_vIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_conv2d_bias_vIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_self_attn_k0_vIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_self_attn_k1_vIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_self_attn_q0_vIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_self_attn_q1_vIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_self_attn_v0_vIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_self_attn_v1_vIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_49AssignVariableOp&assignvariableop_49_adam_self_attn_w_vIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_kernel_vIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_51AssignVariableOp%assignvariableop_51_adam_dense_bias_vIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_dense_1_kernel_vIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_dense_1_bias_vIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ó	
Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: ŕ	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_55Identity_55:output:0*
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


D__inference_self_attn_layer_call_and_return_conditional_losses_99570

inputs0
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:2
 matmul_2_readvariableop_resource:2
 matmul_3_readvariableop_resource:2
 matmul_4_readvariableop_resource:2
 matmul_5_readvariableop_resource:3
!matmul_10_readvariableop_resource:
identity

identity_1˘matmul/ReadVariableOp˘matmul_1/ReadVariableOp˘matmul_10/ReadVariableOp˘matmul_2/ReadVariableOp˘matmul_3/ReadVariableOp˘matmul_4/ReadVariableOp˘matmul_5/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0t
matmulBatchMatMulV2inputsmatmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_1BatchMatMulV2inputsmatmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_2/ReadVariableOpReadVariableOp matmul_2_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_2BatchMatMulV2inputsmatmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_3/ReadVariableOpReadVariableOp matmul_3_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_3BatchMatMulV2inputsmatmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_4/ReadVariableOpReadVariableOp matmul_4_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_4BatchMatMulV2inputsmatmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_5/ReadVariableOpReadVariableOp matmul_5_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_5BatchMatMulV2inputsmatmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7_
ConstConst*
_output_shapes

:77*
dtype0*ŕ^
valueÖ^BÓ^77"Ä^      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                              ˙  ˙  ˙  ˙                                                                                                                                                                                                                  ˙  ˙  ˙                                                                                                                                                                                                                      ˙  ˙                                                                                                                                                                                                                          ˙                                                                                                                                                                                                                            b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   7   g
ReshapeReshapeConst:output:0Reshape/shape:output:0*
T0*"
_output_shapes
:77R
ShapeShapematmul:output:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :R
Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :
Tile/multiplesPackstrided_slice:output:0Tile/multiples/1:output:0Tile/multiples/2:output:0*
N*
T0*
_output_shapes
:m
TileTileReshape:output:0Tile/multiples:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77X
zerosConst* 
_output_shapes
:
 7n*
dtype0*
valueB
 7nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposematmul:output:0transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7q
matmul_6BatchMatMulV2matmul_2:output:0transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@o
truedivRealDivmatmul_6:output:0truediv/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77^
addAddV2truediv:z:0Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77Q
SoftmaxSoftmaxadd:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77u
matmul_7BatchMatMulV2Softmax:softmax:0matmul_4:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   w
	Reshape_1ReshapeSoftmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2zeros:output:0Reshape_1:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7ne
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_1	Transposematmul_1:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7s
matmul_8BatchMatMulV2matmul_3:output:0transpose_1:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@s
	truediv_1RealDivmatmul_8:output:0truediv_1/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77b
add_1AddV2truediv_1:z:0Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77U
	Softmax_1Softmax	add_1:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77w
matmul_9BatchMatMulV2Softmax_1:softmax:0matmul_5:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7d
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   y
	Reshape_2ReshapeSoftmax_1:softmax:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2concat:output:0Reshape_2:output:0concat_1/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nX
concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
concat_2ConcatV2matmul_7:output:0matmul_9:output:0concat_2/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7z
matmul_10/ReadVariableOpReadVariableOp!matmul_10_readvariableop_resource*
_output_shapes

:*
dtype0
	matmul_10BatchMatMulV2concat_2:output:0 matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7`
add_2AddV2matmul_10:output:0inputs*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7\
IdentityIdentity	add_2:z:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7f

Identity_1Identityconcat_1:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nű
NoOpNoOp^matmul/ReadVariableOp^matmul_1/ReadVariableOp^matmul_10/ReadVariableOp^matmul_2/ReadVariableOp^matmul_3/ReadVariableOp^matmul_4/ReadVariableOp^matmul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙7: : : : : : : 2.
matmul/ReadVariableOpmatmul/ReadVariableOp22
matmul_1/ReadVariableOpmatmul_1/ReadVariableOp24
matmul_10/ReadVariableOpmatmul_10/ReadVariableOp22
matmul_2/ReadVariableOpmatmul_2/ReadVariableOp22
matmul_3/ReadVariableOpmatmul_3/ReadVariableOp22
matmul_4/ReadVariableOpmatmul_4/ReadVariableOp22
matmul_5/ReadVariableOpmatmul_5/ReadVariableOp:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
 
_user_specified_nameinputs


ó
B__inference_dense_1_layer_call_and_return_conditional_losses_99104

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_98950

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
%

@__inference_model_layer_call_and_return_conditional_losses_99159

inputs&
conv2d_99123:
conv2d_99125:!
self_attn_99131:!
self_attn_99133:!
self_attn_99135:!
self_attn_99137:!
self_attn_99139:!
self_attn_99141:!
self_attn_99143:
dense_99148:	¸
dense_99150:
dense_1_99153:
dense_1_99155:
identity˘conv2d/StatefulPartitionedCall˘dense/StatefulPartitionedCall˘dense_1/StatefulPartitionedCall˘!self_attn/StatefulPartitionedCallU
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    O
one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ľ
one_hotOneHotinputsone_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
TI0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź*

axisY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙~

ExpandDims
ExpandDimsone_hot:output:0ExpandDims/dim:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Źű
conv2d/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv2d_99123conv2d_99125*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_98976ę
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙7* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_98950b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7      
ReshapeReshape&max_pooling2d/PartitionedCall:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7ö
!self_attn/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0self_attn_99131self_attn_99133self_attn_99135self_attn_99137self_attn_99139self_attn_99141self_attn_99143*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:˙˙˙˙˙˙˙˙˙7:˙˙˙˙˙˙˙˙˙7n*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_self_attn_layer_call_and_return_conditional_losses_99051Ú
flatten/PartitionedCallPartitionedCall*self_attn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_99074ű
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_99148dense_99150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_99087
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_99153dense_1_99155*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_99104w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
NoOpNoOp^conv2d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^self_attn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙Ź: : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!self_attn/StatefulPartitionedCall!self_attn/StatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
 
_user_specified_nameinputs
ź
^
B__inference_flatten_layer_call_and_return_conditional_losses_99074

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙¸  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙7:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
 
_user_specified_nameinputs
Č


@__inference_model_layer_call_and_return_conditional_losses_99443

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource::
(self_attn_matmul_readvariableop_resource:<
*self_attn_matmul_1_readvariableop_resource:<
*self_attn_matmul_2_readvariableop_resource:<
*self_attn_matmul_3_readvariableop_resource:<
*self_attn_matmul_4_readvariableop_resource:<
*self_attn_matmul_5_readvariableop_resource:=
+self_attn_matmul_10_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	¸3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity˘conv2d/BiasAdd/ReadVariableOp˘conv2d/Conv2D/ReadVariableOp˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp˘self_attn/matmul/ReadVariableOp˘!self_attn/matmul_1/ReadVariableOp˘"self_attn/matmul_10/ReadVariableOp˘!self_attn/matmul_2/ReadVariableOp˘!self_attn/matmul_3/ReadVariableOp˘!self_attn/matmul_4/ReadVariableOp˘!self_attn/matmul_5/ReadVariableOpU
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    O
one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ľ
one_hotOneHotinputsone_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
TI0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź*

axisY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙~

ExpandDims
ExpandDimsone_hot:output:0ExpandDims/dim:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ś
conv2d/Conv2DConv2DExpandDims:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ś
max_pooling2d/MaxPoolMaxPoolconv2d/BiasAdd:output:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙7*
ksize
*
paddingVALID*
strides
b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7      
ReshapeReshapemax_pooling2d/MaxPool:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
self_attn/matmul/ReadVariableOpReadVariableOp(self_attn_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
self_attn/matmulBatchMatMulV2Reshape:output:0'self_attn/matmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
!self_attn/matmul_1/ReadVariableOpReadVariableOp*self_attn_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
self_attn/matmul_1BatchMatMulV2Reshape:output:0)self_attn/matmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
!self_attn/matmul_2/ReadVariableOpReadVariableOp*self_attn_matmul_2_readvariableop_resource*
_output_shapes

:*
dtype0
self_attn/matmul_2BatchMatMulV2Reshape:output:0)self_attn/matmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
!self_attn/matmul_3/ReadVariableOpReadVariableOp*self_attn_matmul_3_readvariableop_resource*
_output_shapes

:*
dtype0
self_attn/matmul_3BatchMatMulV2Reshape:output:0)self_attn/matmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
!self_attn/matmul_4/ReadVariableOpReadVariableOp*self_attn_matmul_4_readvariableop_resource*
_output_shapes

:*
dtype0
self_attn/matmul_4BatchMatMulV2Reshape:output:0)self_attn/matmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
!self_attn/matmul_5/ReadVariableOpReadVariableOp*self_attn_matmul_5_readvariableop_resource*
_output_shapes

:*
dtype0
self_attn/matmul_5BatchMatMulV2Reshape:output:0)self_attn/matmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7¨_
self_attn/ConstConst*
_output_shapes

:77*
dtype0*ŕ^
valueÖ^BÓ^77"Ä^      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                              ˙  ˙  ˙  ˙                                                                                                                                                                                                                  ˙  ˙  ˙                                                                                                                                                                                                                      ˙  ˙                                                                                                                                                                                                                          ˙                                                                                                                                                                                                                            l
self_attn/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   7   
self_attn/ReshapeReshapeself_attn/Const:output:0 self_attn/Reshape/shape:output:0*
T0*"
_output_shapes
:77f
self_attn/ShapeShapeself_attn/matmul:output:0*
T0*
_output_shapes
::íĎg
self_attn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
self_attn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
self_attn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
self_attn/strided_sliceStridedSliceself_attn/Shape:output:0&self_attn/strided_slice/stack:output:0(self_attn/strided_slice/stack_1:output:0(self_attn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
self_attn/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :\
self_attn/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :ş
self_attn/Tile/multiplesPack self_attn/strided_slice:output:0#self_attn/Tile/multiples/1:output:0#self_attn/Tile/multiples/2:output:0*
N*
T0*
_output_shapes
:
self_attn/TileTileself_attn/Reshape:output:0!self_attn/Tile/multiples:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77b
self_attn/zerosConst* 
_output_shapes
:
 7n*
dtype0*
valueB
 7nm
self_attn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
self_attn/transpose	Transposeself_attn/matmul:output:0!self_attn/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
self_attn/matmul_6BatchMatMulV2self_attn/matmul_2:output:0self_attn/transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77X
self_attn/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@
self_attn/truedivRealDivself_attn/matmul_6:output:0self_attn/truediv/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77|
self_attn/addAddV2self_attn/truediv:z:0self_attn/Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77e
self_attn/SoftmaxSoftmaxself_attn/add:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77
self_attn/matmul_7BatchMatMulV2self_attn/Softmax:softmax:0self_attn/matmul_4:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7n
self_attn/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   
self_attn/Reshape_1Reshapeself_attn/Softmax:softmax:0"self_attn/Reshape_1/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nW
self_attn/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ł
self_attn/concatConcatV2self_attn/zeros:output:0self_attn/Reshape_1:output:0self_attn/concat/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7no
self_attn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
self_attn/transpose_1	Transposeself_attn/matmul_1:output:0#self_attn/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
self_attn/matmul_8BatchMatMulV2self_attn/matmul_3:output:0self_attn/transpose_1:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77Z
self_attn/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@
self_attn/truediv_1RealDivself_attn/matmul_8:output:0self_attn/truediv_1/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77
self_attn/add_1AddV2self_attn/truediv_1:z:0self_attn/Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77i
self_attn/Softmax_1Softmaxself_attn/add_1:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77
self_attn/matmul_9BatchMatMulV2self_attn/Softmax_1:softmax:0self_attn/matmul_5:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7n
self_attn/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   
self_attn/Reshape_2Reshapeself_attn/Softmax_1:softmax:0"self_attn/Reshape_2/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nY
self_attn/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
self_attn/concat_1ConcatV2self_attn/concat:output:0self_attn/Reshape_2:output:0 self_attn/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nb
self_attn/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙š
self_attn/concat_2ConcatV2self_attn/matmul_7:output:0self_attn/matmul_9:output:0 self_attn/concat_2/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
"self_attn/matmul_10/ReadVariableOpReadVariableOp+self_attn_matmul_10_readvariableop_resource*
_output_shapes

:*
dtype0Ł
self_attn/matmul_10BatchMatMulV2self_attn/concat_2:output:0*self_attn/matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7~
self_attn/add_2AddV2self_attn/matmul_10:output:0Reshape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙¸  z
flatten/ReshapeReshapeself_attn/add_2:z:0flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	¸*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙]
dense/LeakyRelu	LeakyReludense/BiasAdd:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/MatMulMatMuldense/LeakyRelu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ţ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp ^self_attn/matmul/ReadVariableOp"^self_attn/matmul_1/ReadVariableOp#^self_attn/matmul_10/ReadVariableOp"^self_attn/matmul_2/ReadVariableOp"^self_attn/matmul_3/ReadVariableOp"^self_attn/matmul_4/ReadVariableOp"^self_attn/matmul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙Ź: : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2B
self_attn/matmul/ReadVariableOpself_attn/matmul/ReadVariableOp2F
!self_attn/matmul_1/ReadVariableOp!self_attn/matmul_1/ReadVariableOp2H
"self_attn/matmul_10/ReadVariableOp"self_attn/matmul_10/ReadVariableOp2F
!self_attn/matmul_2/ReadVariableOp!self_attn/matmul_2/ReadVariableOp2F
!self_attn/matmul_3/ReadVariableOp!self_attn/matmul_3/ReadVariableOp2F
!self_attn/matmul_4/ReadVariableOp!self_attn/matmul_4/ReadVariableOp2F
!self_attn/matmul_5/ReadVariableOp!self_attn/matmul_5/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
 
_user_specified_nameinputs
ž

'__inference_dense_1_layer_call_fn_99599

inputs
unknown:
	unknown_0:
identity˘StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_99104o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ą

ň
@__inference_dense_layer_call_and_return_conditional_losses_99087

inputs1
matmul_readvariableop_resource:	¸-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¸*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙¸: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
 
_user_specified_nameinputs
¨
Ő
%__inference_model_layer_call_fn_99188
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	¸
	unknown_9:

unknown_10:

unknown_11:
identity˘StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_99159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙Ź: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
!
_user_specified_name	input_1


D__inference_self_attn_layer_call_and_return_conditional_losses_99051

inputs0
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:2
 matmul_2_readvariableop_resource:2
 matmul_3_readvariableop_resource:2
 matmul_4_readvariableop_resource:2
 matmul_5_readvariableop_resource:3
!matmul_10_readvariableop_resource:
identity

identity_1˘matmul/ReadVariableOp˘matmul_1/ReadVariableOp˘matmul_10/ReadVariableOp˘matmul_2/ReadVariableOp˘matmul_3/ReadVariableOp˘matmul_4/ReadVariableOp˘matmul_5/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0t
matmulBatchMatMulV2inputsmatmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_1BatchMatMulV2inputsmatmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_2/ReadVariableOpReadVariableOp matmul_2_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_2BatchMatMulV2inputsmatmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_3/ReadVariableOpReadVariableOp matmul_3_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_3BatchMatMulV2inputsmatmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_4/ReadVariableOpReadVariableOp matmul_4_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_4BatchMatMulV2inputsmatmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7x
matmul_5/ReadVariableOpReadVariableOp matmul_5_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_5BatchMatMulV2inputsmatmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7_
ConstConst*
_output_shapes

:77*
dtype0*ŕ^
valueÖ^BÓ^77"Ä^      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                              ˙  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                  ˙  ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                      ˙  ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                          ˙  ˙  ˙  ˙  ˙                                                                                                                                                                                                              ˙  ˙  ˙  ˙                                                                                                                                                                                                                  ˙  ˙  ˙                                                                                                                                                                                                                      ˙  ˙                                                                                                                                                                                                                          ˙                                                                                                                                                                                                                            b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   7   g
ReshapeReshapeConst:output:0Reshape/shape:output:0*
T0*"
_output_shapes
:77R
ShapeShapematmul:output:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :R
Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :
Tile/multiplesPackstrided_slice:output:0Tile/multiples/1:output:0Tile/multiples/2:output:0*
N*
T0*
_output_shapes
:m
TileTileReshape:output:0Tile/multiples:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77X
zerosConst* 
_output_shapes
:
 7n*
dtype0*
valueB
 7nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposematmul:output:0transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7q
matmul_6BatchMatMulV2matmul_2:output:0transpose:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@o
truedivRealDivmatmul_6:output:0truediv/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77^
addAddV2truediv:z:0Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77Q
SoftmaxSoftmaxadd:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77u
matmul_7BatchMatMulV2Softmax:softmax:0matmul_4:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   w
	Reshape_1ReshapeSoftmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2zeros:output:0Reshape_1:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7ne
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_1	Transposematmul_1:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7s
matmul_8BatchMatMulV2matmul_3:output:0transpose_1:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5@s
	truediv_1RealDivmatmul_8:output:0truediv_1/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77b
add_1AddV2truediv_1:z:0Tile:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77U
	Softmax_1Softmax	add_1:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙77w
matmul_9BatchMatMulV2Softmax_1:softmax:0matmul_5:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7d
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙7   n   y
	Reshape_2ReshapeSoftmax_1:softmax:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2concat:output:0Reshape_2:output:0concat_1/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nX
concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
concat_2ConcatV2matmul_7:output:0matmul_9:output:0concat_2/axis:output:0*
N*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7z
matmul_10/ReadVariableOpReadVariableOp!matmul_10_readvariableop_resource*
_output_shapes

:*
dtype0
	matmul_10BatchMatMulV2concat_2:output:0 matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7`
add_2AddV2matmul_10:output:0inputs*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7\
IdentityIdentity	add_2:z:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7f

Identity_1Identityconcat_1:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙7nű
NoOpNoOp^matmul/ReadVariableOp^matmul_1/ReadVariableOp^matmul_10/ReadVariableOp^matmul_2/ReadVariableOp^matmul_3/ReadVariableOp^matmul_4/ReadVariableOp^matmul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙7: : : : : : : 2.
matmul/ReadVariableOpmatmul/ReadVariableOp22
matmul_1/ReadVariableOpmatmul_1/ReadVariableOp24
matmul_10/ReadVariableOpmatmul_10/ReadVariableOp22
matmul_2/ReadVariableOpmatmul_2/ReadVariableOp22
matmul_3/ReadVariableOpmatmul_3/ReadVariableOp22
matmul_4/ReadVariableOpmatmul_4/ReadVariableOp22
matmul_5/ReadVariableOpmatmul_5/ReadVariableOp:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙7
 
_user_specified_nameinputs

0
__inference__traced_save_99957
file_prefix>
$read_disablecopyonread_conv2d_kernel:2
$read_1_disablecopyonread_conv2d_bias:7
%read_2_disablecopyonread_self_attn_k0:7
%read_3_disablecopyonread_self_attn_k1:7
%read_4_disablecopyonread_self_attn_q0:7
%read_5_disablecopyonread_self_attn_q1:7
%read_6_disablecopyonread_self_attn_v0:7
%read_7_disablecopyonread_self_attn_v1:6
$read_8_disablecopyonread_self_attn_w:8
%read_9_disablecopyonread_dense_kernel:	¸2
$read_10_disablecopyonread_dense_bias::
(read_11_disablecopyonread_dense_1_kernel:4
&read_12_disablecopyonread_dense_1_bias:-
#read_13_disablecopyonread_adam_iter:	 /
%read_14_disablecopyonread_adam_beta_1: /
%read_15_disablecopyonread_adam_beta_2: .
$read_16_disablecopyonread_adam_decay: 6
,read_17_disablecopyonread_adam_learning_rate: )
read_18_disablecopyonread_total: )
read_19_disablecopyonread_count: 9
*read_20_disablecopyonread_true_positives_1:	Č9
*read_21_disablecopyonread_true_negatives_1:	Č:
+read_22_disablecopyonread_false_positives_1:	Č:
+read_23_disablecopyonread_false_negatives_1:	Č7
(read_24_disablecopyonread_true_positives:	Č7
(read_25_disablecopyonread_true_negatives:	Č8
)read_26_disablecopyonread_false_positives:	Č8
)read_27_disablecopyonread_false_negatives:	ČH
.read_28_disablecopyonread_adam_conv2d_kernel_m::
,read_29_disablecopyonread_adam_conv2d_bias_m:?
-read_30_disablecopyonread_adam_self_attn_k0_m:?
-read_31_disablecopyonread_adam_self_attn_k1_m:?
-read_32_disablecopyonread_adam_self_attn_q0_m:?
-read_33_disablecopyonread_adam_self_attn_q1_m:?
-read_34_disablecopyonread_adam_self_attn_v0_m:?
-read_35_disablecopyonread_adam_self_attn_v1_m:>
,read_36_disablecopyonread_adam_self_attn_w_m:@
-read_37_disablecopyonread_adam_dense_kernel_m:	¸9
+read_38_disablecopyonread_adam_dense_bias_m:A
/read_39_disablecopyonread_adam_dense_1_kernel_m:;
-read_40_disablecopyonread_adam_dense_1_bias_m:H
.read_41_disablecopyonread_adam_conv2d_kernel_v::
,read_42_disablecopyonread_adam_conv2d_bias_v:?
-read_43_disablecopyonread_adam_self_attn_k0_v:?
-read_44_disablecopyonread_adam_self_attn_k1_v:?
-read_45_disablecopyonread_adam_self_attn_q0_v:?
-read_46_disablecopyonread_adam_self_attn_q1_v:?
-read_47_disablecopyonread_adam_self_attn_v0_v:?
-read_48_disablecopyonread_adam_self_attn_v1_v:>
,read_49_disablecopyonread_adam_self_attn_w_v:@
-read_50_disablecopyonread_adam_dense_kernel_v:	¸9
+read_51_disablecopyonread_adam_dense_bias_v:A
/read_52_disablecopyonread_adam_dense_1_kernel_v:;
-read_53_disablecopyonread_adam_dense_1_bias_v:
savev2_const
identity_109˘MergeV2Checkpoints˘Read/DisableCopyOnRead˘Read/ReadVariableOp˘Read_1/DisableCopyOnRead˘Read_1/ReadVariableOp˘Read_10/DisableCopyOnRead˘Read_10/ReadVariableOp˘Read_11/DisableCopyOnRead˘Read_11/ReadVariableOp˘Read_12/DisableCopyOnRead˘Read_12/ReadVariableOp˘Read_13/DisableCopyOnRead˘Read_13/ReadVariableOp˘Read_14/DisableCopyOnRead˘Read_14/ReadVariableOp˘Read_15/DisableCopyOnRead˘Read_15/ReadVariableOp˘Read_16/DisableCopyOnRead˘Read_16/ReadVariableOp˘Read_17/DisableCopyOnRead˘Read_17/ReadVariableOp˘Read_18/DisableCopyOnRead˘Read_18/ReadVariableOp˘Read_19/DisableCopyOnRead˘Read_19/ReadVariableOp˘Read_2/DisableCopyOnRead˘Read_2/ReadVariableOp˘Read_20/DisableCopyOnRead˘Read_20/ReadVariableOp˘Read_21/DisableCopyOnRead˘Read_21/ReadVariableOp˘Read_22/DisableCopyOnRead˘Read_22/ReadVariableOp˘Read_23/DisableCopyOnRead˘Read_23/ReadVariableOp˘Read_24/DisableCopyOnRead˘Read_24/ReadVariableOp˘Read_25/DisableCopyOnRead˘Read_25/ReadVariableOp˘Read_26/DisableCopyOnRead˘Read_26/ReadVariableOp˘Read_27/DisableCopyOnRead˘Read_27/ReadVariableOp˘Read_28/DisableCopyOnRead˘Read_28/ReadVariableOp˘Read_29/DisableCopyOnRead˘Read_29/ReadVariableOp˘Read_3/DisableCopyOnRead˘Read_3/ReadVariableOp˘Read_30/DisableCopyOnRead˘Read_30/ReadVariableOp˘Read_31/DisableCopyOnRead˘Read_31/ReadVariableOp˘Read_32/DisableCopyOnRead˘Read_32/ReadVariableOp˘Read_33/DisableCopyOnRead˘Read_33/ReadVariableOp˘Read_34/DisableCopyOnRead˘Read_34/ReadVariableOp˘Read_35/DisableCopyOnRead˘Read_35/ReadVariableOp˘Read_36/DisableCopyOnRead˘Read_36/ReadVariableOp˘Read_37/DisableCopyOnRead˘Read_37/ReadVariableOp˘Read_38/DisableCopyOnRead˘Read_38/ReadVariableOp˘Read_39/DisableCopyOnRead˘Read_39/ReadVariableOp˘Read_4/DisableCopyOnRead˘Read_4/ReadVariableOp˘Read_40/DisableCopyOnRead˘Read_40/ReadVariableOp˘Read_41/DisableCopyOnRead˘Read_41/ReadVariableOp˘Read_42/DisableCopyOnRead˘Read_42/ReadVariableOp˘Read_43/DisableCopyOnRead˘Read_43/ReadVariableOp˘Read_44/DisableCopyOnRead˘Read_44/ReadVariableOp˘Read_45/DisableCopyOnRead˘Read_45/ReadVariableOp˘Read_46/DisableCopyOnRead˘Read_46/ReadVariableOp˘Read_47/DisableCopyOnRead˘Read_47/ReadVariableOp˘Read_48/DisableCopyOnRead˘Read_48/ReadVariableOp˘Read_49/DisableCopyOnRead˘Read_49/ReadVariableOp˘Read_5/DisableCopyOnRead˘Read_5/ReadVariableOp˘Read_50/DisableCopyOnRead˘Read_50/ReadVariableOp˘Read_51/DisableCopyOnRead˘Read_51/ReadVariableOp˘Read_52/DisableCopyOnRead˘Read_52/ReadVariableOp˘Read_53/DisableCopyOnRead˘Read_53/ReadVariableOp˘Read_6/DisableCopyOnRead˘Read_6/ReadVariableOp˘Read_7/DisableCopyOnRead˘Read_7/ReadVariableOp˘Read_8/DisableCopyOnRead˘Read_8/ReadVariableOp˘Read_9/DisableCopyOnRead˘Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 ¨
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
  
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_self_attn_k0"/device:CPU:0*
_output_shapes
 Ľ
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_self_attn_k0^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_self_attn_k1"/device:CPU:0*
_output_shapes
 Ľ
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_self_attn_k1^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_self_attn_q0"/device:CPU:0*
_output_shapes
 Ľ
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_self_attn_q0^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_self_attn_q1"/device:CPU:0*
_output_shapes
 Ľ
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_self_attn_q1^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_self_attn_v0"/device:CPU:0*
_output_shapes
 Ľ
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_self_attn_v0^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_self_attn_v1"/device:CPU:0*
_output_shapes
 Ľ
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_self_attn_v1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_self_attn_w"/device:CPU:0*
_output_shapes
 ¤
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_self_attn_w^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Ś
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	¸*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	¸f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	¸y
Read_10/DisableCopyOnReadDisableCopyOnRead$read_10_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 ˘
Read_10/ReadVariableOpReadVariableOp$read_10_disablecopyonread_dense_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Ş
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_dense_1_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_12/DisableCopyOnReadDisableCopyOnRead&read_12_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 ¤
Read_12/ReadVariableOpReadVariableOp&read_12_disablecopyonread_dense_1_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_13/DisableCopyOnReadDisableCopyOnRead#read_13_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 
Read_13/ReadVariableOpReadVariableOp#read_13_disablecopyonread_adam_iter^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_adam_beta_1^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_adam_beta_2^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_16/DisableCopyOnReadDisableCopyOnRead$read_16_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 
Read_16/ReadVariableOpReadVariableOp$read_16_disablecopyonread_adam_decay^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_17/DisableCopyOnReadDisableCopyOnRead,read_17_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 Ś
Read_17/ReadVariableOpReadVariableOp,read_17_disablecopyonread_adam_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_18/DisableCopyOnReadDisableCopyOnReadread_18_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_18/ReadVariableOpReadVariableOpread_18_disablecopyonread_total^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_19/DisableCopyOnReadDisableCopyOnReadread_19_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_19/ReadVariableOpReadVariableOpread_19_disablecopyonread_count^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_20/DisableCopyOnReadDisableCopyOnRead*read_20_disablecopyonread_true_positives_1"/device:CPU:0*
_output_shapes
 Š
Read_20/ReadVariableOpReadVariableOp*read_20_disablecopyonread_true_positives_1^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č
Read_21/DisableCopyOnReadDisableCopyOnRead*read_21_disablecopyonread_true_negatives_1"/device:CPU:0*
_output_shapes
 Š
Read_21/ReadVariableOpReadVariableOp*read_21_disablecopyonread_true_negatives_1^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č
Read_22/DisableCopyOnReadDisableCopyOnRead+read_22_disablecopyonread_false_positives_1"/device:CPU:0*
_output_shapes
 Ş
Read_22/ReadVariableOpReadVariableOp+read_22_disablecopyonread_false_positives_1^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č
Read_23/DisableCopyOnReadDisableCopyOnRead+read_23_disablecopyonread_false_negatives_1"/device:CPU:0*
_output_shapes
 Ş
Read_23/ReadVariableOpReadVariableOp+read_23_disablecopyonread_false_negatives_1^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č}
Read_24/DisableCopyOnReadDisableCopyOnRead(read_24_disablecopyonread_true_positives"/device:CPU:0*
_output_shapes
 §
Read_24/ReadVariableOpReadVariableOp(read_24_disablecopyonread_true_positives^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č}
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_true_negatives"/device:CPU:0*
_output_shapes
 §
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_true_negatives^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_false_positives"/device:CPU:0*
_output_shapes
 ¨
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_false_positives^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č~
Read_27/DisableCopyOnReadDisableCopyOnRead)read_27_disablecopyonread_false_negatives"/device:CPU:0*
_output_shapes
 ¨
Read_27/ReadVariableOpReadVariableOp)read_27_disablecopyonread_false_negatives^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Č*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Čb
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:Č
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_conv2d_kernel_m"/device:CPU:0*
_output_shapes
 ¸
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_conv2d_kernel_m^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_29/DisableCopyOnReadDisableCopyOnRead,read_29_disablecopyonread_adam_conv2d_bias_m"/device:CPU:0*
_output_shapes
 Ş
Read_29/ReadVariableOpReadVariableOp,read_29_disablecopyonread_adam_conv2d_bias_m^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_30/DisableCopyOnReadDisableCopyOnRead-read_30_disablecopyonread_adam_self_attn_k0_m"/device:CPU:0*
_output_shapes
 Ż
Read_30/ReadVariableOpReadVariableOp-read_30_disablecopyonread_adam_self_attn_k0_m^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_31/DisableCopyOnReadDisableCopyOnRead-read_31_disablecopyonread_adam_self_attn_k1_m"/device:CPU:0*
_output_shapes
 Ż
Read_31/ReadVariableOpReadVariableOp-read_31_disablecopyonread_adam_self_attn_k1_m^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_32/DisableCopyOnReadDisableCopyOnRead-read_32_disablecopyonread_adam_self_attn_q0_m"/device:CPU:0*
_output_shapes
 Ż
Read_32/ReadVariableOpReadVariableOp-read_32_disablecopyonread_adam_self_attn_q0_m^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_adam_self_attn_q1_m"/device:CPU:0*
_output_shapes
 Ż
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_adam_self_attn_q1_m^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_34/DisableCopyOnReadDisableCopyOnRead-read_34_disablecopyonread_adam_self_attn_v0_m"/device:CPU:0*
_output_shapes
 Ż
Read_34/ReadVariableOpReadVariableOp-read_34_disablecopyonread_adam_self_attn_v0_m^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_35/DisableCopyOnReadDisableCopyOnRead-read_35_disablecopyonread_adam_self_attn_v1_m"/device:CPU:0*
_output_shapes
 Ż
Read_35/ReadVariableOpReadVariableOp-read_35_disablecopyonread_adam_self_attn_v1_m^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_36/DisableCopyOnReadDisableCopyOnRead,read_36_disablecopyonread_adam_self_attn_w_m"/device:CPU:0*
_output_shapes
 Ž
Read_36/ReadVariableOpReadVariableOp,read_36_disablecopyonread_adam_self_attn_w_m^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_37/DisableCopyOnReadDisableCopyOnRead-read_37_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 °
Read_37/ReadVariableOpReadVariableOp-read_37_disablecopyonread_adam_dense_kernel_m^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	¸*
dtype0p
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	¸f
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:	¸
Read_38/DisableCopyOnReadDisableCopyOnRead+read_38_disablecopyonread_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 Š
Read_38/ReadVariableOpReadVariableOp+read_38_disablecopyonread_adam_dense_bias_m^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_39/DisableCopyOnReadDisableCopyOnRead/read_39_disablecopyonread_adam_dense_1_kernel_m"/device:CPU:0*
_output_shapes
 ą
Read_39/ReadVariableOpReadVariableOp/read_39_disablecopyonread_adam_dense_1_kernel_m^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_40/DisableCopyOnReadDisableCopyOnRead-read_40_disablecopyonread_adam_dense_1_bias_m"/device:CPU:0*
_output_shapes
 Ť
Read_40/ReadVariableOpReadVariableOp-read_40_disablecopyonread_adam_dense_1_bias_m^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_41/DisableCopyOnReadDisableCopyOnRead.read_41_disablecopyonread_adam_conv2d_kernel_v"/device:CPU:0*
_output_shapes
 ¸
Read_41/ReadVariableOpReadVariableOp.read_41_disablecopyonread_adam_conv2d_kernel_v^Read_41/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_42/DisableCopyOnReadDisableCopyOnRead,read_42_disablecopyonread_adam_conv2d_bias_v"/device:CPU:0*
_output_shapes
 Ş
Read_42/ReadVariableOpReadVariableOp,read_42_disablecopyonread_adam_conv2d_bias_v^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_43/DisableCopyOnReadDisableCopyOnRead-read_43_disablecopyonread_adam_self_attn_k0_v"/device:CPU:0*
_output_shapes
 Ż
Read_43/ReadVariableOpReadVariableOp-read_43_disablecopyonread_adam_self_attn_k0_v^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_44/DisableCopyOnReadDisableCopyOnRead-read_44_disablecopyonread_adam_self_attn_k1_v"/device:CPU:0*
_output_shapes
 Ż
Read_44/ReadVariableOpReadVariableOp-read_44_disablecopyonread_adam_self_attn_k1_v^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_45/DisableCopyOnReadDisableCopyOnRead-read_45_disablecopyonread_adam_self_attn_q0_v"/device:CPU:0*
_output_shapes
 Ż
Read_45/ReadVariableOpReadVariableOp-read_45_disablecopyonread_adam_self_attn_q0_v^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_46/DisableCopyOnReadDisableCopyOnRead-read_46_disablecopyonread_adam_self_attn_q1_v"/device:CPU:0*
_output_shapes
 Ż
Read_46/ReadVariableOpReadVariableOp-read_46_disablecopyonread_adam_self_attn_q1_v^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_47/DisableCopyOnReadDisableCopyOnRead-read_47_disablecopyonread_adam_self_attn_v0_v"/device:CPU:0*
_output_shapes
 Ż
Read_47/ReadVariableOpReadVariableOp-read_47_disablecopyonread_adam_self_attn_v0_v^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_adam_self_attn_v1_v"/device:CPU:0*
_output_shapes
 Ż
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_adam_self_attn_v1_v^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_49/DisableCopyOnReadDisableCopyOnRead,read_49_disablecopyonread_adam_self_attn_w_v"/device:CPU:0*
_output_shapes
 Ž
Read_49/ReadVariableOpReadVariableOp,read_49_disablecopyonread_adam_self_attn_w_v^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_50/DisableCopyOnReadDisableCopyOnRead-read_50_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 °
Read_50/ReadVariableOpReadVariableOp-read_50_disablecopyonread_adam_dense_kernel_v^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	¸*
dtype0q
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	¸h
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:	¸
Read_51/DisableCopyOnReadDisableCopyOnRead+read_51_disablecopyonread_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 Š
Read_51/ReadVariableOpReadVariableOp+read_51_disablecopyonread_adam_dense_bias_v^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_52/DisableCopyOnReadDisableCopyOnRead/read_52_disablecopyonread_adam_dense_1_kernel_v"/device:CPU:0*
_output_shapes
 ą
Read_52/ReadVariableOpReadVariableOp/read_52_disablecopyonread_adam_dense_1_kernel_v^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_53/DisableCopyOnReadDisableCopyOnRead-read_53_disablecopyonread_adam_dense_1_bias_v"/device:CPU:0*
_output_shapes
 Ť
Read_53/ReadVariableOpReadVariableOp-read_53_disablecopyonread_adam_dense_1_bias_v^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:Đ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ů
valueďBě7B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÜ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ą
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *E
dtypes;
927	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_108Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_109IdentityIdentity_108:output:0^NoOp*
T0*
_output_shapes
: ń
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_109Identity_109:output:0*
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:7

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ó
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ź
serving_default
<
input_11
serving_default_input_1:0˙˙˙˙˙˙˙˙˙Ź<
output_10
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
convolutions
	flatten


self_attns
	dense
	optimizer

signatures"
_tf_keras_model
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 
 trace_0
!trace_12é
%__inference_model_layer_call_fn_99188
%__inference_model_layer_call_fn_99347
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z trace_0z!trace_1
Ö
"trace_0
#trace_12
@__inference_model_layer_call_and_return_conditional_losses_99111
@__inference_model_layer_call_and_return_conditional_losses_99443
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z"trace_0z#trace_1
ËBČ
 __inference__wrapped_model_98944input_1"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
$0
%1"
trackable_list_wrapper
Ľ
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
'
,0"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
×
/iter

0beta_1

1beta_2
	2decay
3learning_ratemmmmmmmmmmmmm vĄv˘vŁv¤vĽvŚv§v¨vŠvŞvŤvŹv­"
	optimizer
,
4serving_default"
signature_map
':%2conv2d/kernel
:2conv2d/bias
:2self_attn/K0
:2self_attn/K1
:2self_attn/Q0
:2self_attn/Q1
:2self_attn/V0
:2self_attn/V1
:2self_attn/W
:	¸2dense/kernel
:2
dense/bias
 :2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
J
$0
%1
	2
,3
-4
.5"
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĐBÍ
%__inference_model_layer_call_fn_99188input_1"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ĎBĚ
%__inference_model_layer_call_fn_99347inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ëBč
@__inference_model_layer_call_and_return_conditional_losses_99111input_1"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ęBç
@__inference_model_layer_call_and_return_conditional_losses_99443inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ý
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

kernel
bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
Ľ
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
á
Jtrace_02Ä
'__inference_flatten_layer_call_fn_99448
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zJtrace_0
ü
Ktrace_02ß
B__inference_flatten_layer_call_and_return_conditional_losses_99454
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zKtrace_0
ń
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
K0
K1
RK
Q0
Q1
SQ
V0
V1
TV
W"
_tf_keras_layer
ť
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ť
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ĘBÇ
#__inference_signature_wrapper_99316input_1"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
N
a	variables
b	keras_api
	ctotal
	dcount"
_tf_keras_metric

e	variables
f	keras_api
gtrue_positives
htrue_negatives
ifalse_positives
jfalse_negatives"
_tf_keras_metric

k	variables
l	keras_api
mtrue_positives
ntrue_negatives
ofalse_positives
pfalse_negatives"
_tf_keras_metric
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ŕ
vtrace_02Ă
&__inference_conv2d_layer_call_fn_99463
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zvtrace_0
ű
wtrace_02Ţ
A__inference_conv2d_layer_call_and_return_conditional_losses_99473
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zwtrace_0
Ş2§¤
˛
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
ç
}trace_02Ę
-__inference_max_pooling2d_layer_call_fn_99478
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z}trace_0

~trace_02ĺ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_99483
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z~trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŃBÎ
'__inference_flatten_layer_call_fn_99448inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ěBé
B__inference_flatten_layer_call_and_return_conditional_losses_99454inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
ą
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
ĺ
trace_02Ć
)__inference_self_attn_layer_call_fn_99504
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02á
D__inference_self_attn_layer_call_and_return_conditional_losses_99570
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
á
trace_02Â
%__inference_dense_layer_call_fn_99579
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
ü
trace_02Ý
@__inference_dense_layer_call_and_return_conditional_losses_99590
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
ă
trace_02Ä
'__inference_dense_1_layer_call_fn_99599
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
ţ
trace_02ß
B__inference_dense_1_layer_call_and_return_conditional_losses_99610
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
.
c0
d1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
:  (2total
:  (2count
<
g0
h1
i2
j3"
trackable_list_wrapper
-
e	variables"
_generic_user_object
:Č (2true_positives
:Č (2true_negatives
 :Č (2false_positives
 :Č (2false_negatives
<
m0
n1
o2
p3"
trackable_list_wrapper
-
k	variables"
_generic_user_object
:Č (2true_positives
:Č (2true_negatives
 :Č (2false_positives
 :Č (2false_negatives
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĐBÍ
&__inference_conv2d_layer_call_fn_99463inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ëBč
A__inference_conv2d_layer_call_and_return_conditional_losses_99473inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
×BÔ
-__inference_max_pooling2d_layer_call_fn_99478inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ňBď
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_99483inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÓBĐ
)__inference_self_attn_layer_call_fn_99504inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
îBë
D__inference_self_attn_layer_call_and_return_conditional_losses_99570inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĎBĚ
%__inference_dense_layer_call_fn_99579inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ęBç
@__inference_dense_layer_call_and_return_conditional_losses_99590inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŃBÎ
'__inference_dense_1_layer_call_fn_99599inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ěBé
B__inference_dense_1_layer_call_and_return_conditional_losses_99610inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
#:!2Adam/self_attn/K0/m
#:!2Adam/self_attn/K1/m
#:!2Adam/self_attn/Q0/m
#:!2Adam/self_attn/Q1/m
#:!2Adam/self_attn/V0/m
#:!2Adam/self_attn/V1/m
": 2Adam/self_attn/W/m
$:"	¸2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
#:!2Adam/self_attn/K0/v
#:!2Adam/self_attn/K1/v
#:!2Adam/self_attn/Q0/v
#:!2Adam/self_attn/Q1/v
#:!2Adam/self_attn/V0/v
#:!2Adam/self_attn/V1/v
": 2Adam/self_attn/W/v
$:"	¸2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
 __inference__wrapped_model_98944w1˘.
'˘$
"
input_1˙˙˙˙˙˙˙˙˙Ź
Ş "3Ş0
.
output_1"
output_1˙˙˙˙˙˙˙˙˙ş
A__inference_conv2d_layer_call_and_return_conditional_losses_99473u8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙Ź
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 
&__inference_conv2d_layer_call_fn_99463j8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙Ź
Ş "*'
unknown˙˙˙˙˙˙˙˙˙Š
B__inference_dense_1_layer_call_and_return_conditional_losses_99610c/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 
'__inference_dense_1_layer_call_fn_99599X/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "!
unknown˙˙˙˙˙˙˙˙˙¨
@__inference_dense_layer_call_and_return_conditional_losses_99590d0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙¸
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 
%__inference_dense_layer_call_fn_99579Y0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙¸
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ş
B__inference_flatten_layer_call_and_return_conditional_losses_99454d3˘0
)˘&
$!
inputs˙˙˙˙˙˙˙˙˙7
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙¸
 
'__inference_flatten_layer_call_fn_99448Y3˘0
)˘&
$!
inputs˙˙˙˙˙˙˙˙˙7
Ş ""
unknown˙˙˙˙˙˙˙˙˙¸ň
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_99483ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ě
-__inference_max_pooling2d_layer_call_fn_99478R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙´
@__inference_model_layer_call_and_return_conditional_losses_99111p1˘.
'˘$
"
input_1˙˙˙˙˙˙˙˙˙Ź
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 ł
@__inference_model_layer_call_and_return_conditional_losses_99443o0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙Ź
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 
%__inference_model_layer_call_fn_99188e1˘.
'˘$
"
input_1˙˙˙˙˙˙˙˙˙Ź
Ş "!
unknown˙˙˙˙˙˙˙˙˙
%__inference_model_layer_call_fn_99347d0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙Ź
Ş "!
unknown˙˙˙˙˙˙˙˙˙ę
D__inference_self_attn_layer_call_and_return_conditional_losses_99570Ą3˘0
)˘&
$!
inputs˙˙˙˙˙˙˙˙˙7
Ş "a˘^
W˘T
(%

tensor_0_0˙˙˙˙˙˙˙˙˙7
(%

tensor_0_1˙˙˙˙˙˙˙˙˙7n
 Á
)__inference_self_attn_layer_call_fn_995043˘0
)˘&
$!
inputs˙˙˙˙˙˙˙˙˙7
Ş "S˘P
&#
tensor_0˙˙˙˙˙˙˙˙˙7
&#
tensor_1˙˙˙˙˙˙˙˙˙7nŞ
#__inference_signature_wrapper_99316<˘9
˘ 
2Ş/
-
input_1"
input_1˙˙˙˙˙˙˙˙˙Ź"3Ş0
.
output_1"
output_1˙˙˙˙˙˙˙˙˙