Ŗ
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
�
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
resource�
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
alphafloat%��L>"
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
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
output"out_type��out_type"	
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
L

StringJoin
inputs*N

output"

Nint("
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
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
�
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
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	�**
dtype0
�
Adam/self_attn/W/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*#
shared_nameAdam/self_attn/W/v
z
&Adam/self_attn/W/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/W/v*
_output_shapes
:	�d*
dtype0
�
Adam/self_attn/V4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V4/v
{
'Adam/self_attn/V4/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V4/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V3/v
{
'Adam/self_attn/V3/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V3/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V2/v
{
'Adam/self_attn/V2/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V2/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V1/v
{
'Adam/self_attn/V1/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V1/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V0/v
{
'Adam/self_attn/V0/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V0/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q4/v
{
'Adam/self_attn/Q4/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q4/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q3/v
{
'Adam/self_attn/Q3/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q3/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q2/v
{
'Adam/self_attn/Q2/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q2/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q1/v
{
'Adam/self_attn/Q1/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q1/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q0/v
{
'Adam/self_attn/Q0/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q0/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K4/v
{
'Adam/self_attn/K4/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K4/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K3/v
{
'Adam/self_attn/K3/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K3/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K2/v
{
'Adam/self_attn/K2/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K2/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K1/v
{
'Adam/self_attn/K1/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K1/v*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K0/v
{
'Adam/self_attn/K0/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K0/v*
_output_shapes

:dd*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:d*
dtype0
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/conv2d/kernel/v
�
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:d*
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
�
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
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	�**
dtype0
�
Adam/self_attn/W/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*#
shared_nameAdam/self_attn/W/m
z
&Adam/self_attn/W/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/W/m*
_output_shapes
:	�d*
dtype0
�
Adam/self_attn/V4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V4/m
{
'Adam/self_attn/V4/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V4/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V3/m
{
'Adam/self_attn/V3/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V3/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V2/m
{
'Adam/self_attn/V2/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V2/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V1/m
{
'Adam/self_attn/V1/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V1/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/V0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/V0/m
{
'Adam/self_attn/V0/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V0/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q4/m
{
'Adam/self_attn/Q4/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q4/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q3/m
{
'Adam/self_attn/Q3/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q3/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q2/m
{
'Adam/self_attn/Q2/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q2/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q1/m
{
'Adam/self_attn/Q1/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q1/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/Q0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/Q0/m
{
'Adam/self_attn/Q0/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q0/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K4/m
{
'Adam/self_attn/K4/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K4/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K3/m
{
'Adam/self_attn/K3/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K3/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K2/m
{
'Adam/self_attn/K2/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K2/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K1/m
{
'Adam/self_attn/K1/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K1/m*
_output_shapes

:dd*
dtype0
�
Adam/self_attn/K0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*$
shared_nameAdam/self_attn/K0/m
{
'Adam/self_attn/K0/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K0/m*
_output_shapes

:dd*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:d*
dtype0
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:d*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:�*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:�*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:�*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:�*
dtype0
{
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namefalse_negatives_1
t
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes	
:�*
dtype0
{
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namefalse_positives_1
t
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes	
:�*
dtype0
y
true_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nametrue_negatives_1
r
$true_negatives_1/Read/ReadVariableOpReadVariableOptrue_negatives_1*
_output_shapes	
:�*
dtype0
y
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nametrue_positives_1
r
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes	
:�*
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
shape:	�**
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�**
dtype0
s
self_attn/WVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*
shared_nameself_attn/W
l
self_attn/W/Read/ReadVariableOpReadVariableOpself_attn/W*
_output_shapes
:	�d*
dtype0
t
self_attn/V4VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/V4
m
 self_attn/V4/Read/ReadVariableOpReadVariableOpself_attn/V4*
_output_shapes

:dd*
dtype0
t
self_attn/V3VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/V3
m
 self_attn/V3/Read/ReadVariableOpReadVariableOpself_attn/V3*
_output_shapes

:dd*
dtype0
t
self_attn/V2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/V2
m
 self_attn/V2/Read/ReadVariableOpReadVariableOpself_attn/V2*
_output_shapes

:dd*
dtype0
t
self_attn/V1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/V1
m
 self_attn/V1/Read/ReadVariableOpReadVariableOpself_attn/V1*
_output_shapes

:dd*
dtype0
t
self_attn/V0VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/V0
m
 self_attn/V0/Read/ReadVariableOpReadVariableOpself_attn/V0*
_output_shapes

:dd*
dtype0
t
self_attn/Q4VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/Q4
m
 self_attn/Q4/Read/ReadVariableOpReadVariableOpself_attn/Q4*
_output_shapes

:dd*
dtype0
t
self_attn/Q3VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/Q3
m
 self_attn/Q3/Read/ReadVariableOpReadVariableOpself_attn/Q3*
_output_shapes

:dd*
dtype0
t
self_attn/Q2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/Q2
m
 self_attn/Q2/Read/ReadVariableOpReadVariableOpself_attn/Q2*
_output_shapes

:dd*
dtype0
t
self_attn/Q1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/Q1
m
 self_attn/Q1/Read/ReadVariableOpReadVariableOpself_attn/Q1*
_output_shapes

:dd*
dtype0
t
self_attn/Q0VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/Q0
m
 self_attn/Q0/Read/ReadVariableOpReadVariableOpself_attn/Q0*
_output_shapes

:dd*
dtype0
t
self_attn/K4VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/K4
m
 self_attn/K4/Read/ReadVariableOpReadVariableOpself_attn/K4*
_output_shapes

:dd*
dtype0
t
self_attn/K3VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/K3
m
 self_attn/K3/Read/ReadVariableOpReadVariableOpself_attn/K3*
_output_shapes

:dd*
dtype0
t
self_attn/K2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/K2
m
 self_attn/K2/Read/ReadVariableOpReadVariableOpself_attn/K2*
_output_shapes

:dd*
dtype0
t
self_attn/K1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/K1
m
 self_attn/K1/Read/ReadVariableOpReadVariableOpself_attn/K1*
_output_shapes

:dd*
dtype0
t
self_attn/K0VarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*
shared_nameself_attn/K0
m
 self_attn/K0/Read/ReadVariableOpReadVariableOpself_attn/K0*
_output_shapes

:dd*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:d*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:d*
dtype0
|
serving_default_input_1Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasself_attn/K0self_attn/K1self_attn/K2self_attn/K3self_attn/K4self_attn/Q0self_attn/Q1self_attn/Q2self_attn/Q3self_attn/Q4self_attn/V0self_attn/V1self_attn/V2self_attn/V3self_attn/V4self_attn/Wdense/kernel
dense/biasdense_1/kerneldense_1/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_27568

NoOpNoOp
�m
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�m
value�mB�m B�m
�
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
�
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
12
13
14
15
16
17
 18
!19
"20
#21*
�
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
12
13
14
15
16
17
 18
!19
"20
#21*
* 
�
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

)trace_0* 

*trace_0* 
* 

+0
,1*
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 

30*

40
51*
�
6iter

7beta_1

8beta_2
	9decay
:learning_ratem�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m� m�!m�"m�#m�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�#v�*

;serving_default* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/K0&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/K1&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/K2&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/K3&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/K4&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/Q0&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/Q1&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/Q2&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEself_attn/Q3'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEself_attn/Q4'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEself_attn/V0'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEself_attn/V1'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEself_attn/V2'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEself_attn/V3'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEself_attn/V4'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEself_attn/W'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
+0
,1
	2
33
44
55*

<0
=1
>2*
* 
* 
* 
* 
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

kernel
bias
 E_jit_compiled_convolution_op*
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
* 
* 
* 
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

Qtrace_0* 

Rtrace_0* 
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
K0
K1
K2
K3
K4
YK
Q0
Q1
Q2
Q3
Q4
ZQ
V0
V1
V2
V3
V4
[V
W*
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

 kernel
!bias*
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

"kernel
#bias*
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
h	variables
i	keras_api
	jtotal
	kcount*
t
l	variables
m	keras_api
ntrue_positives
otrue_negatives
pfalse_positives
qfalse_negatives*
t
r	variables
s	keras_api
ttrue_positives
utrue_negatives
vfalse_positives
wfalse_negatives*

0
1*

0
1*
* 
�
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
&D"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
* 
* 
* 
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
z
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15*
z
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
'
0
1
2
3
4*
'
0
1
2
3
4*
'
0
1
2
3
4*

 0
!1*

 0
!1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

j0
k1*

h	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
 
n0
o1
p2
q3*

l	variables*
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEtrue_negatives_1=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
 
t0
u1
v2
w3*

r	variables*
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
VARIABLE_VALUEAdam/self_attn/K2/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K3/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K4/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q0/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q1/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q2/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/Q3/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/Q4/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V0/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V1/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V2/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V3/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V4/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/W/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_1/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_1/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K0/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K1/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K2/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K3/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/K4/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q0/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q1/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/Q2/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/Q3/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/Q4/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V0/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V1/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V2/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V3/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/self_attn/V4/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/self_attn/W/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_1/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_1/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasself_attn/K0self_attn/K1self_attn/K2self_attn/K3self_attn/K4self_attn/Q0self_attn/Q1self_attn/Q2self_attn/Q3self_attn/Q4self_attn/V0self_attn/V1self_attn/V2self_attn/V3self_attn/V4self_attn/Wdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttrue_positives_1true_negatives_1false_positives_1false_negatives_1true_positivestrue_negativesfalse_positivesfalse_negativesAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/self_attn/K0/mAdam/self_attn/K1/mAdam/self_attn/K2/mAdam/self_attn/K3/mAdam/self_attn/K4/mAdam/self_attn/Q0/mAdam/self_attn/Q1/mAdam/self_attn/Q2/mAdam/self_attn/Q3/mAdam/self_attn/Q4/mAdam/self_attn/V0/mAdam/self_attn/V1/mAdam/self_attn/V2/mAdam/self_attn/V3/mAdam/self_attn/V4/mAdam/self_attn/W/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/self_attn/K0/vAdam/self_attn/K1/vAdam/self_attn/K2/vAdam/self_attn/K3/vAdam/self_attn/K4/vAdam/self_attn/Q0/vAdam/self_attn/Q1/vAdam/self_attn/Q2/vAdam/self_attn/Q3/vAdam/self_attn/Q4/vAdam/self_attn/V0/vAdam/self_attn/V1/vAdam/self_attn/V2/vAdam/self_attn/V3/vAdam/self_attn/V4/vAdam/self_attn/W/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vConst*^
TinW
U2S*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_28314
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasself_attn/K0self_attn/K1self_attn/K2self_attn/K3self_attn/K4self_attn/Q0self_attn/Q1self_attn/Q2self_attn/Q3self_attn/Q4self_attn/V0self_attn/V1self_attn/V2self_attn/V3self_attn/V4self_attn/Wdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttrue_positives_1true_negatives_1false_positives_1false_negatives_1true_positivestrue_negativesfalse_positivesfalse_negativesAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/self_attn/K0/mAdam/self_attn/K1/mAdam/self_attn/K2/mAdam/self_attn/K3/mAdam/self_attn/K4/mAdam/self_attn/Q0/mAdam/self_attn/Q1/mAdam/self_attn/Q2/mAdam/self_attn/Q3/mAdam/self_attn/Q4/mAdam/self_attn/V0/mAdam/self_attn/V1/mAdam/self_attn/V2/mAdam/self_attn/V3/mAdam/self_attn/V4/mAdam/self_attn/W/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/self_attn/K0/vAdam/self_attn/K1/vAdam/self_attn/K2/vAdam/self_attn/K3/vAdam/self_attn/K4/vAdam/self_attn/Q0/vAdam/self_attn/Q1/vAdam/self_attn/Q2/vAdam/self_attn/Q3/vAdam/self_attn/Q4/vAdam/self_attn/V0/vAdam/self_attn/V1/vAdam/self_attn/V2/vAdam/self_attn/V3/vAdam/self_attn/V4/vAdam/self_attn/W/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*]
TinV
T2R*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_28566�
�
�
#__inference_signature_wrapper_27568
input_1!
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:dd
	unknown_3:dd
	unknown_4:dd
	unknown_5:dd
	unknown_6:dd
	unknown_7:dd
	unknown_8:dd
	unknown_9:dd

unknown_10:dd

unknown_11:dd

unknown_12:dd

unknown_13:dd

unknown_14:dd

unknown_15:dd

unknown_16:	�d

unknown_17:	�*

unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_27159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name27564:%!

_user_specified_name27562:%!

_user_specified_name27560:%!

_user_specified_name27558:%!

_user_specified_name27556:%!

_user_specified_name27554:%!

_user_specified_name27552:%!

_user_specified_name27550:%!

_user_specified_name27548:%!

_user_specified_name27546:%!

_user_specified_name27544:%!

_user_specified_name27542:%
!

_user_specified_name27540:%	!

_user_specified_name27538:%!

_user_specified_name27536:%!

_user_specified_name27534:%!

_user_specified_name27532:%!

_user_specified_name27530:%!

_user_specified_name27528:%!

_user_specified_name27526:%!

_user_specified_name27524:%!

_user_specified_name27522:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
)__inference_self_attn_layer_call_fn_27647

inputs
unknown:dd
	unknown_0:dd
	unknown_1:dd
	unknown_2:dd
	unknown_3:dd
	unknown_4:dd
	unknown_5:dd
	unknown_6:dd
	unknown_7:dd
	unknown_8:dd
	unknown_9:dd

unknown_10:dd

unknown_11:dd

unknown_12:dd

unknown_13:dd

unknown_14:	�d
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������7d:���������77*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_self_attn_layer_call_and_return_conditional_losses_27317s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������7du

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:���������77<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������7d: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name27641:%!

_user_specified_name27639:%!

_user_specified_name27637:%!

_user_specified_name27635:%!

_user_specified_name27633:%!

_user_specified_name27631:%
!

_user_specified_name27629:%	!

_user_specified_name27627:%!

_user_specified_name27625:%!

_user_specified_name27623:%!

_user_specified_name27621:%!

_user_specified_name27619:%!

_user_specified_name27617:%!

_user_specified_name27615:%!

_user_specified_name27613:%!

_user_specified_name27611:S O
+
_output_shapes
:���������7d
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27164

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_27579

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����|  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������*Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������7d:S O
+
_output_shapes
:���������7d
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_27441
input_1!
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:dd
	unknown_3:dd
	unknown_4:dd
	unknown_5:dd
	unknown_6:dd
	unknown_7:dd
	unknown_8:dd
	unknown_9:dd

unknown_10:dd

unknown_11:dd

unknown_12:dd

unknown_13:dd

unknown_14:dd

unknown_15:dd

unknown_16:	�d

unknown_17:	�*

unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_27392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name27437:%!

_user_specified_name27435:%!

_user_specified_name27433:%!

_user_specified_name27431:%!

_user_specified_name27429:%!

_user_specified_name27427:%!

_user_specified_name27425:%!

_user_specified_name27423:%!

_user_specified_name27421:%!

_user_specified_name27419:%!

_user_specified_name27417:%!

_user_specified_name27415:%
!

_user_specified_name27413:%	!

_user_specified_name27411:%!

_user_specified_name27409:%!

_user_specified_name27407:%!

_user_specified_name27405:%!

_user_specified_name27403:%!

_user_specified_name27401:%!

_user_specified_name27399:%!

_user_specified_name27397:%!

_user_specified_name27395:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�

�
A__inference_conv2d_layer_call_and_return_conditional_losses_27187

inputs8
conv2d_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:d*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������d*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������dh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������dS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_27603

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27164�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_27392
input_1&
conv2d_27188:d
conv2d_27190:d!
self_attn_27318:dd!
self_attn_27320:dd!
self_attn_27322:dd!
self_attn_27324:dd!
self_attn_27326:dd!
self_attn_27328:dd!
self_attn_27330:dd!
self_attn_27332:dd!
self_attn_27334:dd!
self_attn_27336:dd!
self_attn_27338:dd!
self_attn_27340:dd!
self_attn_27342:dd!
self_attn_27344:dd!
self_attn_27346:dd"
self_attn_27348:	�d
dense_27370:	�*
dense_27372:
dense_1_27386:
dense_1_27388:
identity��conv2d/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�!self_attn/StatefulPartitionedCallU
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
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
value	B :�
one_hotOneHotinput_1one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
TI0*
T0*,
_output_shapes
:����������*

axisY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������~

ExpandDims
ExpandDimsone_hot:output:0ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
conv2d/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv2d_27188conv2d_27190*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_27187�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27164b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����7   d   �
ReshapeReshape&max_pooling2d/PartitionedCall:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:���������7d��
Cast/xConst*
_output_shapes

:7d*
dtype0*��
value��B��7d"��                                                                                                                                                                                                                                                                                                                                                                                                                      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?�	�T��?�v>#��?y�Hoj�?�9@\j�?}vu��y�?�ǈ����?
��`���?��M�g�?�_�?:�?,�0Y>�?u�Щ3�?����)��?��{A}�?Sު�P�?ނO��f�?���L$�?b��b�۪?:�"��W�?��c#䕢?��n@k�?�p�/��?�i�d�?xi�Oˑ?;�� ��?bS�"-��?���z�?�CF���?}���PV|?X(�K�w?��ǚs?�m��qNp?>@MlO k?�jh�f?��W!K�b?�)��8_?p�e��Y?Aa(�*�U?�,C��Q?�f���M?cB)�h�H?��m}ڬD?z;3cg2A?7�*��<?�0=Vp�7?<�$^��3?\b�>v0?���b+?ꘫ��&?S �M�"?	�B�?��(J�?!W�Q��?q��8}��?�����?�?�pg�?G8�B[�?����B�?)���>��?YEb2�)�?�뎻k�?7�T��?5�6��?j�����?��L^���?��p��?�\�����?�	����?�O�K2��?ܙ��?e��C��?�4�mj��?T��K6��?��W���?�I��$��?�,�oh��?���$���?�-�t���?b+�����?�JG���?޽�����?9!�a���?������?ʵ���?�7;���?r�^1���?Ӄ�]���?�@�-���?�E����?�� ���?�e���?�H"����?�����?������??�����?�������?����?;IH����?z������?#?d����?������?F�����?5�����?�j��p�?��E�M8�?�͚t�)�?������?<���G��?G̭@¿�?����N�?iSJ���?'�����?�BO�ʭ�?�JMl��?��V��7�?uT{@]X�?D	��?���"Һ?�v*<R�?2�e���?�%�K��?9�+x���?�{k�^c�?+�2��ʡ?���56��?z�t����?gX�͇z�?�mv��?�B']$V�?Vq�ʑ�?_��?���?��ہiN�?AUA�E {?n@F��v?k'�G�r?�  �8o?�L�A��i?άM�)�e?G����a?C>G�]?\1,Ph�X?�a8ڬT?��w;g2Q?��I���L?e�;p�G?�o O��C?k�J�>v@?����b;?Je��6?��J�2?�3�B�/?rSW&�ڿ9 �ㆴ�����J��?}+�R�?;����l�?<Q���a�?n��<<�?	 �AD�?ykǤ��?�.�.L��?-B
�g�?6ԗ���?�`#�;�?����x�?ÛF���?.SYRܾ�?ܣ�����?*\O����?Y�zBi��?'C{���??�/!���?d��b���?�@�w��?�(����?�k�ġ��?��e�\��?������?�N@7��?w�uu��?�/���?��m����?@�����?��.���?�������?��{����?L~�v���?�8����?y3����?4�����?N ����?&�T���?GXD����?g3���?J	tr���?s�����?`@����?�$!����?�ђ����?�������?1�z����?[նm8�?i_�D�E�?����?oKQ� ��?hv�7���?$[0�H��?*��%���?��dv��?�Խ�.M�?���U�O�?�ٻ�K�?/����?�wT޽��?Q�/	�J�?�"�����?��"��?������?:���޶�?Q�JLԻ?-�)�X)�?-�L��E�?�̭�	�?L�_D7��?�Z@\�1�?��۟xv�?�g��#��?�"�ᓌ�?̇U�c@�?��8��?����g�?����u�?��%(X�?O��V��?�pC�c&|?�=
Kjw?4`�şys?��h��2p?�!
�n�j?��p�if? �$���b?P��F_?nW�u��Y?^���tU?����Q?(����M?��[^�H?�"��D?qK��QA?���"k<?K�1�7?�兾����,�ϋ���Y�޿�8���ÿj47�??*ѝ|��?����w�?�����?Ƿ'RO��?S�(����?[��Ts�?���鮇�?�A�y�H�?��X_I��?�!��,�?����m�?RJ�{���?3J�۹�?���s��?K�Hg��?ܢN[���?T?F����?�T����?���L��?��L���?�\5ZP��?��#s��?��R<��?��b����?vq�'��?���nj��?�1����?��{i���?�O y���?uZ����?j<K���?9������?+�m����?��&���?h�ȑ���?!�4>���?�˙f���?���3���?�����?c�#���?bِg���?D������?bX
����?J8�����?�O����?��ݹ7�pW�'t�ǿ;�(�e�? @�3��?I�(�� �?*T��?J�F���?�Db���?���[ec�?
qhڙ�?k!�>n��?�/w�?�?9�|�-�?¸l6C��?��_Mz�?������?���X��?E6��x<�?��<�9��?��� bپ?������?�q�\�^�?+q-q�Ǳ?�����?Z��木?�r
e{y�?�TD}�?L�rU�?K*�ld��?Q#b~��?l/�GN�?�&� �?u�M]돆?Xyi�:Ă?G�8?��R�z�y?�F��$�u?�*F���q?��-|�m?��7pf�h?n2$٬d?�Z��f2a?�uaE��\?����o�W?F�o��S?°p�>vP?ߧw��bK?і�l�F?�S=�B?��}B�??�$�����H�s�)������2���\��VkV�տ&�x�Y&������4�?�K���?���a�z�?���݃%�?'�1�5��?]o�B��?�2;���?c�;����?�d/�É�?Ɨ{z��?&�&)L�?ꗆ�p��?�(+©�?�'�M��?��1���?�6��h��?�z�f7��?��O��?���k���?x���r��?��Dhw��?�+���?8��z���?�%����?�M����?|�NH��?�������?T����?M�����?,�����?�58����?�dR����?�����?P��X���?��$R���?uva���?�n�����?*�����?%\Kx���?�����?X��D���?�GK~���?^�C����?�8�����?3�������rR��8��S��ӿ��M����?�������?���8�?��ҡ���?`
���f�?�e&�?�~hK|�?� ,�M��?f{���??o�����?��u��.�?���V��?���9}��?�*m���?u�:��?�����?%�ɭA�?�$���?��[�±�?��YC7�??�
}K|�?�Oekj®?<d��ޖ�?��g�yI�?.��L��?���]u�?kR�怘?��+ɹa�?�u�� ��?Τ�,�3�?�#֣=u�?��f����??�j��:�?��ni�z?:�+��tv?�E���r?;QJ>o?8�Rj�i?�K���~e?.�U2�a?�M�dK�]?��C�K�X?�W�gΓT?��}�Q? {b2�xL?�?5 ��G?�5z���C?�Jkp�'�?������וd=ef�G�u�V��͇t̯r翮�\��ڿ�kd�����n>?���?�u��h�?��ζ��?�#�t�w�?�*���K�?�K�hO�?W�{X��?x�	�ǹ�?BSYJ�k�?�:����?��	w�=�?4�R~ay�?"k�ɢ�?�0�y��?)u�fW��?�Ex[��?q�Ik���?�4��?X�(���?�����?zE�l��?������?��}���?jO!�`��?�TF����?�s�%9��?9'mv��?��mҠ��?��'���?޷�q���?0��{���?�2#2���?��J����?��Y����?b�����?�xD���?mGU����?�������?,^�X���?j(����?��U5���?�*�s���?ڈ�����?������ѿ�s��
��s���=�}�i�ӿ? J')�?�+����?Q�E�[E�?�å��?В� �b�?�L���?��q���?�W���?hߩ����?
���S��?�*�N"�?_�g�v��?77D�;��?˟�;��?p
����?����?�0u�7�?��/(� �?�*t�鷺?1���,�?�ڮes�?�^�-���?$mڡ���?1���7?�?���t���?�7�j*g�?�ˣ�u�?���I�W�?fZ{��?�78&�?��8�i�?�	=X�y�?�&z�2�?lXe�z?D2N��iv?)�8|��r?���Co?X�}]��i?��fO�te?G�pZ��a?�<��]?���]�X?�T6n�T?/�tQQ?�yɺ"kL?ŊC�1�G?�"x	���?q$�`\��?���A6	῔7Z�v�'Z"���):�Y�,呾��ٿ��>�紿�&, Y��?�n�)��?K�����?�U�X��?�L7R�?:	a��S�?�.4���?y{����?���7m�?�	����?p3s�a>�?_l���y�?�015#��?�{����?��nc���?�36��?ɍa���?;�;BB��?�<�����?���}���?x�b%��?]-I���?}U����?�nab��?��/����?���9��?t���v��?� .���?7�f���?^X�����?9�����?y�$G���?]b�����?��g����?������?�p���?������?3kC����?�O*Z���?�b)����?��6���?@Qt���?	
m��?-Xu��uܿ��ւk���>=V���OШ��ʿ���<�?]��1z�?���T��?��>���?�X��?���w��?|x2�V��?d��Z98�?�bg��?�� �l4�?��V[�?5gm�p��?��tg�@�?sjY�b�?6w����?H06�d�?�J�,G��?����?�4��۹?�N�`焵?a�A��?{/դ'˭?nu��ɨ?���A��?����&�?���XZ��?iZ����?� �����?.F���k�?��"-�P�?�W�v��?U�d��?��$p?����$&z?A�M��u?}g;r?�C�0n?�Öi?��� �d?n�dNQa?XKJ��\? ��2�W?dS�G4�S?ʳ5ԓP?anQ	��K? ٞ��?�d=�h��?Q%�g���?�!��y:�����
N�!��B���L�o�%`ֿ0i���ˠ�\yA��?�\*��}�?~��P�?�,%B*�?��!��?�4d���?���>���?��;|g��?L־a���?b�|���?����I�?��K����?��ժ���?�H��v��?LaN��?V{1���?��E���?"m\��?)��De��?���Z��?���g��?��$����?�+�����?���@z��?��[���?��sE��?%7��~��?H����?��I:���?�S�C���?;�o���?������?�.F����?~h�5���?��:���?��fP���?������?�
�����?{��r���?H0����?�^�A���?{�(�Ҩ�?9��
�2�?�ocx6��}�����%�(]_N���K�%���]<{C�?_������?���ڧ��?�|�),��?�H����?�bᯠ��?���~)��?r�U�T�?b�wX�?�?u��X��?�,L_q�?��q���?��_MT�?��6՟�?���9���?���K�?4.N��?�e>�c��?��:���?DJu�?GOɞ�?ej���R�?�c�Hˏ�?`�"𒙣?��"%�M�?1�?�򡑏�?���[Ē?Spt��7�?��X��?�f@(��?�*if���?>A��n�}?��g�^�x?>�u�Ԭt?�{� d2q?:�i��l?���-n�g?��+ ��c?�H>v`?�X��b[?{]~�V?E3�R?�M�@B�O?�/c���¿������?�MQ�'r�?����л���[qU�迚�o�U��xu�=2��{+a��P.p�п�1�@1ç?�m����?��n����?� �zOu�?+g�&���?���?I�?�We[�?*�"��8�?�,���?;?�٨�?8��?Ɣ@w'[�?���֍�?��t���?�4j�J��?�P!K#��?�U%����?M�����?���t��?��5R��?+�����?��o|���?��~5 ��?�+����?�Iџ��?�}�X��?I��nW��?��a���?� cQ���?�yx.���?�(b���?uݕH���?v/G����?�]r6���?p�@'���?
�-����?^����?�Y���?�#-����?n�����?9����?�/6&`�?GB��7��?��������h�쿳�u@2j��}Պ��Vۿ�.ֵ:��?�*�@���?|E8�?C����?i0����?�m��H��?乴�q��?����j�?O���`0�?�Q�5�?SR`�?�d�b��?��I��?��y.�?�����?	�M�V��?�ȿO��?��]Ú�?e�1j��?��j�G�?���\%�?����ۯ?�5�!��?E^��g�?��.BW�?�C��4��?�I�`a�?dYY�s�?3TS��?Q�C�56�?�uv+L�?�i3п5�?�ϡ�[π?�v����{?�9��mBw?�����Xs?���9xp?�[�K��j?�S��Cf?�h}��b?�����^?� ����Y?D��YPU?HK48e�Q?k���'��"�����?�����?Fl����?�ja�[3ٿ�;E����'�I���￴YW�9�+W��,޿Atnl#b¿��y$k�?���x���?�Lw���?�C�{���?����?�MEJ��?��&P�?и�:��?"�#�N�?WR�[F��?�u��/�?�ہʙo�?�ABc��?�"��Ǻ�?��3.��?)�D���?�`r���?�N� ��?䫂-��?�o�f��?�X:���?ɪh�\��?�Cܼ{��?%��EB��?=�����?��K�*��?ޜ�fl��?�����?���Z���?�� ���?9��/���?3�j����?������?�Z�����?���@���?y�����?�=�J���?=#]o���?Y��9���?DѶ����?SO���h�
e����?�0�o!��?A&��$�G7C���G�scD��q�����ſ�DS
-�?�S�@h�?Q��@�9�?�J��/��?ʵ(l(��?<	��w�?U�q/�M�?D�MO1�?���Л��?�zFn��?k[���?E���Ժ�?�3ٵ	�?^�r���?������?2�~��!�?$;���o�?Z�9G1��?,ˋˮ��?�D ��D�?�qF^��?|m�>r�?g���?�"Z+�`�?C��h�?�?y�!3�?N@��t�?
Aȩ���?|�CJ�:�?ꡐ�B��?��W��t�?G�8B��?���/?p���y?�F��~u?S�%�/�q?��c.H�m?�S�I�h?�XW͓d?#�΀�a?��~�x\?zq���W?�Z�K��S?k����P�E�ܿ]�����? nd^#��?>���{�?)��V_忣X��L��(uI�	����V忥f+_\տ*����ތ�̛s���?�j:�;�?�)ʖ�?|��9�?p�����?6_�.���?o�	����?Xi����?��"UE��?��w���?�{�A�M�?������?F�LB���?�ӕ����?�����?1�έ��?G{�3g��?@��p��?�IO���?���V���?��D]���?�9�����?�(;����?���K���?�3y����?����I��?s}H���?���Ȩ��?��9����?znmA���?�ʰ���?�q���?��U-���?Uf�o���?v�Ib���?��<l���?܌V����?*�(����?�%�{���?�.v��￭�N�f�?JS2���?�[���?���D�<�͞J�j=���G�޿-���ۘ�?�6Ԙ���?U��ޯ�?����L��?z���b��?�a~4N��?b�ނ��?x��h���?��x�?W�F�v�?�]9��?��^���?�Lp1 ��?ɝ s�u�?*b4�(�?A��Q�?,Dd"D�?�̞����?+��Cn�?���c�?#k���v�?P��ʍ1�?�~३�?2��
j�?��*��?2�@���?@��5͙?uU ['v�?�*���ّ?Q��uW��?of��k��?8�*����?`��%��?U_m|?�%�E�w?
�f��s?��g�[p?é`�6k?Pj���f?0�w��b?|���Q_?�.�T�Z?ውZ��U?�/�A� r?�O�cY��Fk <��?Hk��?\�ۗ��?k�ɚ��ԿX����׹�6��￐�R|��*�m࿉)�eE�ſ�+ph�Ӿ?�M6��?4VQ+�3�?0M�;�}�?�"�Uܘ�?]�s��?�Ǆ�a�?|�/J{�?_`"@�?�:$�E��?@1)9�(�?��j�?�DjJ���?w��Nw��?�G�}��?�<fT���?7`�.J��?��S���?$�=���?��r%��?�5�����?�-��=��?�b�+f��?�0Z3��?f�BN���?���#��?Dvg��?��w���?�l����?1�A}���?�����?�������?��7F���?ă�m���?�������?W�*v���?
a+���?�aY���?��*���?�e���+�6L��_��֕���?k��^ʥ�?k��F)q�N V���$|έ���$$�Ŀ�x��{�?�ɂ��%�?�w^�C�?�$K�~��?ʦ��?���x�o�?2_�E�?~P���?�����?"[����?�#e��?dMI[��?O��� �?V�����?��a5��?<�R>�?����g�?��<�u��?���f��?Z7�K�:�?���%٩�?��I�d�?	.�Ms�?�r(*�V�?ן�=�?�]��%�?�~���i�?��g�Wy�?V�6E�2�?'���>�?a�h��i�?z=��}��?+Zs4?h�����y?���|�tu?�����q?�����m?���\�h?#w_�d?���Pa?MG{"k\?T�d1�W?�ek� �?�ӿ�c,뿥do�θۿu��O�?�λ��s�?����?ν�ߘ�����Œ��r�@���&4z�~�俐����Կ�:�k�����%6%%�?7p�_.Y�?�%����?>l�A�?�d��y��?b�b��?)/�Ԯ�?D�k���?Q��˧��?������?�,sD�N�?�f���?v�k��?%�ŝ��?E*_:��?9	����?���z��?�B�}��?>�X���?�qX����?{'ð���?v�����?�~\����?/�����?r�8����?~~wJ��?1��h���?|3����?�[����?�+�i���?���:���?�OS���?�:���?�y���?�j�h���?��p���?�c����?E����?ŁH��?r�ca�w￝'����?\lG����?�8p٩5��bmɀ��� HR�`�����Y2ۿ�|�����?�����?s��s�=�?׀�t��?����?��ŧ�? ��h_��?����f�?|0��c-�?�Iz�43�?#��wO�?��]`J|�?��k���?f��b�+�?,)v���?W��+��?}�����?<�ڗ�?��r���?�.�J<��?t|�+�!�?k���I֯?��ɬv|�?:Y���?E��T�?��Bj�}�?����\�?U�$#��?�P6�:��?���1�?
=��G�?С-�/2�?�}Q@è?����{?t=�T>w?g�ԘFUs?J\��p?#RE#�j?`��8	@f?��Nb?�@y�d�^?�-�gu�Y?�&��	�?�2�2�?ǿWo�����z���V�?�76���?� Ʒ��?b�*� `ٿL����ɱ�˒￉|��0�בr^q޿�f�J�;¿rHB���?_v0���?��b2��?��4�J��?3d3pE��?ruS.��?����I��?��lZ���?��U~O�?>.�����?��p��/�?�����o�?��%��?��.��?��(��?�r|����?A_x���?$ܔ�%��?�J��?�t�<i��?��߿��?7��^��?E��|��?����B��?a����?�O|�*��?_o��l��?/�	���?�׻s���?��S1���?���;���?�N�����?�8�����?�����?��C���?rJ�����?��-L���?�Dp���?E^|2��?�����}������п���{$Y�?���\��?�/S���X������TM.���ڷ�{�ɰ���.�5�?�q0'��?5X�ƶ��?q�I����?�*賋��? 0+�]��?�+��J��?:z���s�?�?^Mv\�?uc�&�?�k;�B�?�+;��?��@�Lt�?$�E���?��x�ѹ�?;�1hq�?o��|���?���;��?���)���?0oo����?�9�%*$�?�� O���?���;��?���Ǽ�?Ͱ2
k�?wwu�=P�?l��)��?x�����?��t�o�?�ކ�&�?\��῅? ��/�?	�F#~?F�\
y?Q;�r��t?;�3�KQq?��&_��l?���1�g?�SFP3�c?3LV�ӓ`?�ye��[?��,욀�?�����W�?igu���ދ*�ɿt�y�?�?@�h�.F�?vRX����D�F�U-��J/^��tp�Ky�'���P�^�J]ѿ_�E9�I�?���쁋�?n���,�?��ClN�?�T�ߎ��?p�b=I5�?opo4F��?=D ;�.�?����
�?�xï��?"6�9��?�''��X�?'��B;��?��tٯ�?X"�|���?y]�֚��?�]Q>n��?�������?.�q�G��?��g�2��?�`(���?{�����?a����?*�����?��ۚ��?Y���?ju�U��?uKv����?~qb.���?�>%e���?�������?ׅ9����?�֜A���? TS���?�{X���?q`����?�o�����?ۂ����?���q(��?rGH��������G�Ij����?�i����?���/��ӿ5��'����I���n9��ҿ�4|X��?�~��$�?�.>)&d�?{�iݠ��?-"[&X�?�~F�5�?����y��?�T����?7�C4�|�?ʄ��2��?��ec��?���.��?1D���?�f��~�?�����?���d��?"���� �?�I��_ۿ?��aƄ�?�vPx��?%��]�?"|RQt��?�oM�k�?�gc~%�?��f�$��?)�xj�C�?�swW�?��5B?�?���TUא?��F�?y��l�M�?�5`��a�?���6�?g��V��z?����Nv?JeZ��r?>`OZ��n?𳁹X�i?Y�$}�Ze?f����a?n�_\��]?�]O迭e�u���?��:�⿉>~_s濻�}h'��?���d�u�?]n�?3����� oS�О����B8��X5#�翾D��Oٿ��N�貿p���@��?�ǝ��?��y�ݴ�?W�wh��?��
�a�?wC��^�?;gI���?�c�E[��?Gl�'�p�?�|�@��?KyF4@�?e>�&{�?7�^>��?�X�R��?�n����?a�g|���?'�}|���?E��e��?�B|����?J����?r��)��?L s���?B�Hf���?A��f��?g�K[���?���;��?�o�<x��?S�O���?_����?�q���?D�����?3��{���?/V&���?r鈳���?������?^����?q������?� _mҿ���s��?R�����V��L���?A��vOc�?V����?u�N����S_�Ga��q��ne��&���??�:q8�?ϋ�y�?���\v�?g���?�*tH��?�oݞ4�?���n��?�� ����?��in���?��$��?�b���?�+����?k�����?��L|�V�?�0���x�?/d���d�?�Ft���?X�k�G�?ܰ�_g��?0eej啳?$STK�K�?����?�[�*��?rk��8â?�����6�?��x����?�z r�?u����? 	�:�?i�5�@ۈ?����ì�?\&�1Z2�?A"A�u�|?����g�w?8OW��s?ڻe<vp?�1A^�bk?�1��f?���3�b?rLA�_?t/�~%��C��N��?�wB۲?L�ג>��;V�F��?����Y��?<�tPu��?���J�Aӿ�&��뿢%����ѣ��`N��F��h�8�j�t]ǿΨf�F��?�Q��^�?z?�;@�?R���]�?+޾��?1!��%��?x\�<&V�?�h?@s�?�Nt͆:�?V��^��? n:j�%�? ?.��h�?�&��]��?XIk2���?(l ����?�B�M��?�7�����?xQ�c��?��(Z���?��	��?�_oc��?�a�q1��?����]��?,⩇-��?�"G���?բ�� ��?~֍�e��?#�"���?�2���?e������?������?�������?W����?!�IH���?2Ѵ����?-M?d���?����?+�B����KҔ����?R��4n翛1X�dhֿ�DY����?�!����?�|�rw�	>��C��)NE=���J�����@Z<��?ʧh��?@�.�[��?�ī�L��?d� 6��?��v	V�?��/����?���Q��?��^_��?‼ҿn�?.~����?�h��A�?�s\)��?�d�#�?��^o���?d�&hħ�?t�*�	�?7���
�?I+>3� �?�7ܗδ?�k��O�?�]lrά?�Y�����?�	z�F�?�����?���#��?՘�9@�?>�Yw�?���U��?����h�?�4�����?��~E�?Q��D+e~?���Hy?�ɗ�Gu?ö6v�}q?����m?/ѳ��3h?��p7!d?4�B�`?�X�F�ѿt�[Ug��jg��,�?�S *{���̕ˆ��ѿۘ�P�?]O��e�?����랿ߨ��Y翪�4�������%��JKk����9c;i�ҿ�\8�ݔ?�V$���?N��ސ��?�`��L�?M�W���?�@Op�?�Τ����?�TZ�c �?�w��� �?&C���?�7:�	�?1�}U�?�����?ġ��=��?�#�`h��?��s���?�I�����?CJ8�>��?�l ��?�Z���?�� ����?��}Գ��?� ���?��f���?;K�����?o�����?�4:�Q��?\��[���?��m����?���A���?l�G���?k��\���?�-����?ړ�����?�,0����?:|+����?|ʨ����?'h�Y�3��|�?�I����BBz8�����,*�?*S�0��?xic�MԿIl�
��Th����ouY1ҿ�ks�9�?Ο@�D?�?��)p�?���v��?o��K�S�?}���?ap���?[�-���?.�ξt�?�IH5��?m,���?>_^��? � qб�?>]�(�v�?��R|�?E�p�p��?�8���?��̿?W�u�x�?��+�?��Y�>T�?�W
��?�Z�a_�?�0ͥM�?@�`���?Ϥ\2s5�?�@d�K�?QQ�R5�?�E�6ϐ?������?B�!UB�?����X�?�Qp�?�����z?�O��Cv?9Ѓ��r?��Tj��n?����i?�z�XPe?���d�a?p$]�P!�?�xe�翦�_��?���O���4�濾���2R�?z��L�X�?�@G*�?Ώ���B��e���.�?Ƭ��Dx�[ �c�nٿҸŖ���A�}��?߄gy��?��7۴��?��zv���?J���g�?~[��-c�?֣�p���?
9W\~��?t�0ozr�?��BJ��?V��-�@�?�Ӝĥ{�?��[��?����?%3M@��?���ٝ��?36����?��X�s��?j,�X���?a�kG	��?�.��?�L����?(0����?
|��g��?Y��l���?�J��<��? &ÿx��?r��m���?m}�C���?�A�6���?������?d�`����?��}+���?9�t����?�+�����?-]����?τ�(-/�?�H��Ul��N�2��~�?D�Z�&��%����?�`����?Abï�?������뿎CΕ����&�[|ݿ�G�t��?$�t8��? �t��?�^����?:���g��?]����?4Ԗ���?��h����?�Guڍ]�?aO`X�^�?��{i�e�?��
uk��?�����?��q?[�?���hF��?]˽<�,�?�	�M�$�?q.���?2
��?�1~3�?�?�_��pX�?p�x�?u�ô�Ǫ?,�^MG�?��MC��?�ڽԞ?��3��?�!4��T�?P�B��?r��I��?)����?����k�?b�VJ��?�����A|?pZ!���w?�76�e�s?��g{Bp?�6�hk?C `�yf?3��u��b?X��w��?��#P���,�}e��?��)�rկ�����C�X�F/L�?�p֨���?69���?"�SJ��ֿ�6���f�eY􎏺�Չ���ck:�1b߿z�!�Ŀ������?�A���B�?�Mϳ�]�?0��"T��?/���֮�?��t���?��./�l�?4�h����?FU��~E�?�Uy ��?8Ek2+�?�K%�l�?��+��?�4T��?7�x���?pC�7&��?�8x���?�����?��*���?�=��?�1�ġ��?d��;I��?��6n��?k��8��?�U�'���?���-&��?���Mi��?P����?�b3߷��?�u���?�=*z���?�����?��y���?�-�����?\]���?(XK����?�<]��6�?6�	鮙��m3ʐ�?�L�<��뿇Pm^E�¿Xg� ��?"��J(O�?��U={b�ȵ��-����N^���ݛ���ݜ�]�����?ּ��� �?mdo����?l�}�7��?�։zN|�?���d\��?-:�M^��? ���}?�?�ܽY~,�?��1��?�������?�#0dx��?Q�Bf�>�?�x&t{�?��=#�m�?����1�?�����?�:g�e�?J+�n�w�?���\�?7e���?+�U e0�?TVnEs�?@0Y�ׁ�?=xD�:�?U�wD���?���+>t�?�k:ZL��?wsU��?���E�׉?Ùn�~�?�=a$�?[�GU;�}?�dg`B�x?�7ɓt?2c�q?��Ŭ�xl?fmb���g?��\��c??�d9�?d,'�3㿼:�N_��?�Ym\l�?���P����M�����6.�,�?�
���?�������S��z鿗�j���￺�M��v�;�⿩	͋�пK.M-|s�?��E��t�??I����?Z/�i��?P��6l��?�akV�V�?�����?Ηb�(?�?Ow+,�?�^#*��? 8~gQ�?zbw��\�?�Ȏ\��?1ўδ��?W_����?��_�~��?�����?����
��?��w���?G��.g��?aQS��?h�Ԇ���?��''��?'=���?Kq�$���?U�ʥ��?t�"Y��? K�z���?f�f���?Cdc����?�Pc����?4N)����?�)�����?��ZU���?r�<���?�������?�װ���?v�i}:o￿�H�ٔ�?d��O��ݿI�j���x���d��?�������?�z���޿a��xX��|�F͓?�}b���ǿ��o�_V�?3C���?�C���?Q�x���?���	�?�9����?�moe�?QS�A�?[o�2���?]@a��?�RV0�?��ߝO��?B]��7!�?�$���?G�.bЮ�?��6�>�?*�g���?��Dܾ?�vb���?y���`�?s�^D�ɱ?�WHҘ�?�T�l5��?��jg{�?T��ա	�?�tͫX�?�D�����?�tF�U��?����O�?�X٪"�?���	��?_Oe2�ł?[���:?�����y?��o!,�u?lT���q?��J�m?)���h?�PL?ʮd?Z7w����N��(��?+zkshؿw@X.Z�?	wo����}��߿$	7�,�?��R��?ƫ��(�?YWm���X6h��q�^ޢz����O��b�/��~+�տV�.�v���(e+%�?���C��?_J��wx�?NQ���#�?4�����?��7nv��?.0A���?��ʅ��?�P�}��?�?��I��?'�&}L�?���wY��?������?pqudB��?U'op���?�\f_c��?�#��3��?�|�%M��?I:�����?�:jEq��?�=�v��?��6t���?�Y.���?B��b��?�
�����?)���G��?'�£���?��N���?�-�
���?)	�����?������?ID�����?t�����?(@�V���?���P���?��n�� ���l�r�����4��?���*ڷ?�Ae��쿃�s<��?S�Ӎ���?�
��	k̿��$�L�"zk�������տ�/LPz��?lt�>�R�?�`�^��?�`F���?�w�E�w�?WE�D�?>A=�c8�?�������?δ����?��T!��?V�x�od�?���b��?9�o��?3 J�/��?wK����?F����J�?�`1�%h�?U�n@)�?�=>��?�Q��d�?c�� ��?|��0�?S#Y�˩?[�?i�t�?)�
&?١?��؊��?N������?�S��]��?��(��?���pm�?����+��?Eˈ�ת�?�3���[�?Wd��6{?����v?���4��r?(��_�Qo?\�,�j?䬧�e?ڬ�ح���f��D�?�,�
�D쿃R�P]��?��Kc�ܿ��<'�A6��o>�?aVg(�3�?�~J����?����8�߿ε(���٣��i￫g���Ųߵۿ��L����*��%A�?�%�>&��?�$JX�?����R�?����1�?Ré�<�?Q����?4Ǭ����?v~He�?�	"��?��I�:�?jtP�:w�?��K��?e4�+q��?�:�V���?�������?H�(�E��?��P���?~�����?����?h��Q��?������?Qޝ��?ht��Y��?jj�����?ڥ�5��?J��8t��?{'�K���?������?km����?�r����?% �����?of����?��e���?2�����?}$�<��]ގ���?]��/�ɿ��.���?,�Q��
��{��?X��/%�?��Ϯ�`�?϶کp+뿵�܋nF�Í���޿ߪd�� �?{q��ʕ�?d�^�6��?�c�e��?�͡C|��?�D���?�b����?[�e#��?��Ps{�?��W�y�?�&b蛕�?��m���?�� ��?ȃ%/ y�?B�^.�?+d<��V�?�'4H�?A�;��?_��c��?[�Q1fh�?��H�hz�?*Iy �4�?�������?�wXMxn�?N�=�٨�?�����
�?�B��Nҙ?l[ez�?�o�xݑ?G���5��?�}ZM��?t�����?��g�+�?BO��;s|?F�,��w?R�߳ɮs?y_p?��7�;k?�����f?r���῵*[z���?�^�;�U�=v�pn�?h�\zt�?�eE����ָ�YG,�?�/�!��?���\���?�Hߺy�Կ?-!��B�Er�����"�꿗2�}�࿺>���&ƿ�8���?X�+����?�H�.�?l����y�?���S��?�D�=u��?�1�9`�?,���Nz�?B��r?�?�g����?�dxmF(�?6$�B�j�?�������?r`�[��?���ui��?#Oʮ��?�)��@��?�$����?4p����?�W"��?�5�ю��?�<��?h�$e��?Z�2��?s�>����?��,#��?�?�9g��?Tr<N���?�o����?��Hi���?�.H ���?�^b����?_e�?���?�*'i���?�Yq����?y��L�k���?W��}��H����N�?ER#6쿢g�)����.y��?a��>��?�V����{(]����Z6珬���YH����,�p�>�?#�a��?(2����?�-B����?���]v�?�D��H��?��ˀ�|�?��&�7�?�Z��$�?8�$�y��?ӭ4,���?%���b��?,/�;+6�?��V'
m�?����a�?����'�?��_��?����W�?��*])l�?�ѽ��R�?w�����? Bf��"�?� 
��g�?%��px�?'Ps/2�?�q]���?�.U�ji�?�M6K��?��1��?'��unˉ?k�U2�t�?`^4z�؁?*&	�}?bQ��T�x?;�z$݉t?Z$�iNq?\�B:kl?!�]�/�g?�`
��%�?��ÖL�?�K�����E�����?�.55�?������8K��з��p4� N�?���T��?��;�J����^1�<鿏1D%���i2��W���^7����Ȩ��B�Ͽ�os\u�?�J�A���?I}t���?�5���?��&G���?�`n%�[�?��M��?�����A�?���-��?��dV��?YFk`3�?i�UbQ]�?�-cV��?4& ��?Ũ���?�c|آ��?mk�$��?X�K��?�F���?��vo��?z ���?ü�}���?�)��?ש̦	��?��t���?�rP���?�� �Y��?H�B���?:fa���?oR�����?��=����?ma�����?"͗����?��a���?U`E���?����������|��?P;r����/���?_/c��zC�v|�����)�?���P�!�?"Wd���� �T=��k�Q�i��(�8�ÿ��Z9��?q&q/�H�?rഈuQ�?��]���?UCH)<��?�ɜ� d�?*mR8�?Q�P���?3D�W���?n�e����?��
�7��?E\�9���?Dyĩ��?w����?*'A��l�?bگ�C�?��9��Y�?���,��?&�+�o�?K��+�?�������?c߁��N�?����sa�?�*c�H�?����ޠ?!�����?���oX�?d��k�?��&�?��:�ފ?x�GcY�?�ވߖ�?�d
��~?v�^��y?��
��du?�Ṇ�q?���2@�m? B>�Q�h?�����?�:�x�]׿��y�l�?6y4�ӅϿ��&�If�?���ʤ����Xڿ�j^�?�Al��-�?��j[-<�?*Lr���t1�@��￵��fx�����
��@��yԿ��
q{�P-h��`�?�CB��?�V㲲�?w�2xN�?�&#��?b����?�7����?��zd���?SyZ����?��}�T�?V�wM�O�?����ƅ�?�N7d`��?�s�yl��?���u��?�@)9���?J�Ì���?ixԏ���?o�I����?�ʄ���?8�7���?�!"���?��=����?&����?�����?�{_�K��?\�����?DKy����?��;���?�S����?�	d���?�^5���? �N���?!�����?�%���f�?i����?�e�J�c&X��?��b�&��Ɵ�E��۠���K�?8���q��?� ����Կ��8Q���.p�u��6���<ҿ�$��X�?p��H�?�LHT�t�?���
��?k�MLR�?hX��?&@¤���?1���e��?��a�q�?���Ib��?� nVo��?��l}�?�t�t��?���t�?ܮM/Aw�?̾��q��?�]\K�?���S�ƿ?O	H�bs�?��OrK�?�=?�Q�?./P^z�?���Z�?Z����?�/����?��kM0�?4�-sG�?�_�s�1�?���7@̐?)�WB��?�TǊ;>�?^T�{8U�?}Cp��?N7���z?����@v?t�� ��r?'�� a�n?�$&[s�i?���&���?΁,�}���J\ڴ���? p�(]}翐!�Y��?�1���;�C��So��UN?�\q�?+��N�?%�� ���?J�a�ῑ$�������! -��dE����1���ٿ�ƗW�ӱ�~�M8�?I�u�?��*���?_�-�֡�?��o*j�?(_��d�?������?��5�E��?�h�ds�?�謪��?$��B/A�?<��I�{�?���{��?Qk���?ԉ�'��?(e����?�M7��?5�wy��?T������?:r����?D{jM0��?�٫��?�?q���?�h��?Co&����?T���<��?� n�x��?�Vǎ���?}5�Z���?Q�F���?�Y����?�����?{ݷ0���?Q�����?0�尡��?`����ܿ���ſ�a۬���?���"X�?3���R�C\N��?���#@�?�-�T���}�A/���#�[����`T�ٿ������?9
ս�?p[�O6l�?e�����?��"-H��?�N�;���?�$ڔ�?\����K�?���k��?
0n��?����}��?�qCY�?�l�i�?$1Y� �??��O6��?V�o9X��?�������?�`���~�?�->v�v�?(��Ax۶?|+�>
�?U8Ut��?ys,XT�??6��"�?��ev@8�?ARxÝO�?ۥOu6�?��q���?��� �q�?��T���?a.��#�?��5���?�7����?r�V^|�{?��w?K�>�7s?%a���o?�L���j?��Y�f�ҿpH�1Ĕ��O����?�X�f��Yyc����?t�Ϝ�AϿ��p�*R���lI��?�Ȧ����?�r�>��?I�֥K�ڿ8�9��?���P\�z￣f��.�迌� }qgݿ��p����.;�e��?8�O^bv�?�m!���?9_[�S��?��v���?M�%[�
�?������?��ڋ��?��+T�?�L6��?Z咂I2�?aA�4q�?�
��R��?�$B����?��H����?����G��?_#�\��?�͐�U��?HaC3)��?2V-���?弝����?�_�
i��?���8���?��i$H��?�����?{p�w-��?Y}�Xn��?�5P;���?cXI���?D������?�Rޡ���?��H����?ny���?�m����?�E;�V�?k�ӗ��ޖ4��?R��-ٿ�o[82��?���B��ﵘ�j��?���b��?�흉E��?�|�t�鿳��{���Y21`���|�d�F�?C��MԿ�?��#�:�?��Uc�?�U�����?!>�f�?���n�5�?N2�1���?��RA��?��x#���?֫=�O��?���o3�?R
���#�?�t)�ϯ�?�V3���?|�4���?��.�ވ�?�6}Q�?/St�-z�?6����?��u
��?�Q���h�?�0��M�?$�f����?� ����?����n�?ptv%�?�w_����?�e���?6�:
��?I����?$*D��ф?ҳppAQ�?�P����|?�D7J*�w?Z��r/�s?\q�mѓp?Ԗֶ�k? %XѪ� ̮�:ѿUL��2��?v��^k��3n>¢x�?[��� O�?�y+�+��GTG"�?Sh+���?�Qax)��?�y\ѿ� ��I��f����x�V���VgS�࿫�<���ȿxYL��?������?�mkO���?�_�/�9�?�8��g�?<:����?e���2I�?�Z".j�?5O�24�?��U���?�� Q�"�?��H~�f�?"�*��?�)�R���?��V(��?xU�|���?�����?�~�'��?N�"�W��?��[���?K�n�k��?�=�#��?$+ BT��?!SC�&��?+,����?�;]���?�Wn[c��?������?Q����?}�W!���?��f���? �k,���?A�����?�����?�ɦ }<忔�g, �=�m���?\�Ɯ���6�P+��?��~�I��K���ƿ_x��X��?�����?6/�~��忀Se���￡v�٭'�`�E����� -xL��?�N(&���?��C����?�K��9��?���(��?�G~)���?(�|ד�?1<�v�M�?m��[U9�?*C	���?UW��p�?�.�[��?��
M�?��%���?.�ZB��? ��\�B�?<U�u���?�t��g}�?Gq�����?�-0�l�?���V���?�s�q#G�?���2��?��䖑�?�#ҘG�?�ehu�?<x	`��?`�|�a��?�M�+�?n�[��?�F�C��?�+��?�	W�@�}?�Xi=�x?���g�t?� �a+q?aݦ�؏l?HN1X��a�O���?x:Ȉa�?������o}9�B�?�zP����?[�l�~ￕp��s����V���?�nj��@�?������ZM����迱�����!�O��!��I,��"���cп1Cuj� �?H��pr6�?�������?$�=~�?�{�����?N+'��M�?/�׉�?�[S��:�?
��?&k]��?\�>���?�i^H�[�?�2�2��?�W6��?�3w��?m��B��?�e^���?�������?�� ��?��FY��?� ���?�������?�Ì"��?y�>���?�e"���?IS��?���W��?�����?�'����?�L�[���?yG�����?	�X^���?_/U����?"��@���?=����B?&��ƿ΂t��9�?h1��Pv��o7�?؞�ڬ�O�
b82߿$�#G]�?�_�����?��R�.�A0���<�2RG?������¿��ۅ	@�?�B�u_�?j�DV�Z�?H�6���?�B���?\gwX\�?ac�`/�?�M�R��?���@���?�����?5'����?�ii���?3������?/�v���?S?�@`�?Z
ۿ��??V�C�P�?�FCӂ��?kh���c�?9�a�� �?l�l�{��?�%�@�?����U�?�S��>>�?����֠?�qDs�?�E=�.M�?/rD�a�? ��R�?ĕ'��ъ?���p�N�?��s�荂?!����~?=MvP�y?R���Zu?�74��q?�H6��m?RZP��?z=�G�{�?7���տ^<+y]ޏ���c8r&̿�$�N=��?B��������WoٿQL����?/nb ���?� Rv��?A��2}�忻U|���￥kGGzg��2�r�K��w�!BԿ�ȡ�^�m�^��Ǉ�?^춡{��?h����?��w�V�?T�<���?5ø����?���	�?q����?�	/���?bez�H�?����0P�?/M�<��?��Ǳ��?�{פ��?�ל��?�^<��?O�>���?�����?�����?@8���?��Ӏ���?-#���?в]����?zZfO���?�o���?��D.L��?�iL����?����?J2�t���?�F*����?e�����?:�oH���?�/�[���?��@���ٿX~� Mj�?�򪘒�?N~� >�:�٧w�?�|��J�̿��4���䊇����?odv.]�?���K+�׿��o[�a՜=������?Lп��$��?����9��?d�\!Χ�?y����?�F�>�?_�sJ��?<�"	��?�j���y�?��[8�N�?Ã���j�?��k�:��?�3�z�M�?�ø���?9:��Q�?���m�=�?�e>�i��?k�֑$��?DM{Q~��?�1.�;�?Y �3�Ե?�O�@*�?��b��9�?:���2%�?�E�g��?C)�.cf�?;s��o�?�{6��?�� �?�-\���?E��q��?\i����?��X�;,�?:� ��?(atpc�z?`a���v?J&��Zr? ����n? *�ÑE�?'�1��o�?� l�_�p�'=���?�LA��俖k�l1�?B,Z�wC�Q9�v��.���?������?� �
��?�@�Yb��Q������d��n�m�`�濖�ۚ�ؿ�U�6,����_!���?�A�b��?�|
���?��<`��?�m���?��W �w�?����D��?5mD���?�X1@�y�?����.��?�|k�QD�?�+� ~�?vu����?Ք�����?�A�����?�Z��(��?8W��Y��?�Ѧd���?���S��?��)��?C��D��?M ���?�$�*���?U���n��?y[�w���?{@�?��?o=�){��?%�Y���?��k���?��d���?$O�����?ERS����?�Ao���?feB�I��?B�e����?|`���¿�3�}�ڿ� �?Gp�?�goG�
�?b�,P{��-��-K]�?����?�A�u�ǿ�	�=�����	7Է,�帠p��ֿ��?�S�?� {���?U��D���?������?oU�a��?yC!S}\�?��>�T�?���c?
�?������??�l{Y��?^��'��?VR	���?:����!�?�R�����?�.�B�?[���o�?S_6w3��?���,C�?@��U�?)n����?�|`����?��O!3�?��z����?�Y����?Cz����?>��Zj�?��D��ژ?e�&�~��?4>�v22�?�\AH��?�IMˇ?��2�ʃ?��c3v�?*�-Wvb{?����v?�����r?/�y=�o?��]0���?��;h�D�?��)��￴��m�?Ĳ.T<���<�����?y0�9��ؿ���4�+�Fj��?�l��#s�?
9&Ct��?�e�X޿������)����4￨ޞQ.迍HB��ۿ@�ܜj���k��&'�?U�-}�r�?�iq�U/�?Z�j5�?Gm5�O�?��Y�-�?�,��2��?@�.��?�Λ�"`�?�������?�8�?	�@k�u�?[`V��?���W���?E�����?��A4��?�()r���?�Vѯ���?���uw��?�-�S���?N��5���?�)�����?˘
(���?/ڌT��?� F���?H=�g3��?<;qtr��?�3���?6Ox@���?[Y0!���?C`ג���?�+�����?�p�z���?8bA(G��?�Ә���?���i$�翪�9�P��?�>T3����5^�L�?�c�����l
	YJ�?n��J8��?���
��s?���G�뿣�P"����&�)�_ݿ�~�l��?Av����?7����?vy ����?%�����?O� :���?����+��?��]a,��?JA�&[�?`�о�\�?�a�eb�?���I��?�\���?��k�X�?C���@��?���')�?\�%"�?��G���?��0��?�Bx�V<�?
n�϶U�?%��3�?���P"Ī?ޟc(D�?��tH���?7��zcО?qMĔ��?�7�r�Q�?�ƒ���?U����?o�g���?�#.Z�h�?�N<���?�j�)�=|?)q��G}w?Χ�.��s?'}�/@p?x_���0��9�`W��,��5I`�ҁ����?�$R#�￡�����?4�-�.u��k�/�c6��,�˨��?�1�|���?J�}���?v�}�ֿ��bn��d'ȸ��;�$��6�T��Q߿6$=�Ŀ�]h��?+d�{�L�?y�R��a�?P}���?U(pҰ�?�%�s��?qNm�?������?e��E�?�N��V��?�g�?n+�?Kw��l�?�7���?�Ο!h��?~���#��?���/��?�����?��Xa���?��U���?D�`�?��?l��H���?c( HJ��?�}��n��?� k9��?(�����?ZZk&��?�v\xi��?���ۗ��?\�����?�p�'���?������?ϋs$���?=1�~���?�}8�>��?��T�w�2f�=��￶Ѱ�M��?�ӭ�N%���b�?кv��� V���?Ƹ���?M������?%�d�(��ג76�'�?L��f��G�'wܤ?* �R�?������?d&��E�?�(/XE��?Q�m�5�?���ada�?���I �?�P
��?D��f���?�R�3�?TڨSp�?��>�W�?���r���?T~����?�c]�8��?9�d���?����E�?�#�¼?�]X��?���h�?}���Ғ�?y]�����?�$����?���*D�?�/�Z��?PJ|�_h�?_���9��?�Z�\NE�?���k�d�?P�G�?:b5�?h���}�?�N��}?)���3x?&��t3!t?��cO@�p?��Q�|'�@�W����ϼ�*!Q���u腐'�?!�������?��ݩ���?��7���je+�袰?��\#d�?�?v�"�?1��s8Ϳ�;rG���;��2��+��뿉�P_c�%) �� ˿����'�?��'�$�?�
6����?���H��?t���B�?�1��-��?V9��y6�?1�ߙ]�?��+�?�d�ژ��?�Բ�i�?��ӯ�c�?f�5cē�?7;���?�#�#��?�R���?�ڽ)��?��wy���?v����?_w�����?���N��?�/����?*NU�F��?��s��?(j'���?51x��?U�5`��?ކ�s���?�K˄���?!?y���?���d���?Ir�����?�\�z���?�ˌHXgۿx��x��翠���n鿩����?��뙷����v]W�?*��Q���L�VY�O˿�3����?1C��<�?�D#"�{�h6�L��=ք�߁�)ѩ��V;
��?>�כ���?�������?V��Ln��?���}��?B[��8��?����?HH�^�?�:B
I�?�Զ��?��d�$�?�
9�	��?�1���^�?t�V�)��?�&��?*���W�?�>�;��?�4�\��?�'��£�?�G�s��?S�-n�?W�D c�?���:b��?�8�ᤣ?�P/R(W�?��s)/�?�s����?�+k��Β?����I�?�A U�?�J���?dd��E�?�1����}?!�����x?$6z�øt?��Q<q?��P���M��s�k��@0�k�?������?�r`��D�"i���?G6�� ��?<G_�YC���7{��Ŀ�)pz��?��}A��?\²v<,��RᲚ8����9���A n?I쿈x�$㿦>�f�п�N�b+�?��FI*��?JSla�t�?����h�?�Ѐ���?s�.��B�?�D���?����_5�?��]W�?����O��?71���?���iZ�?o�mR��?xo�ߚ��?�to��?�5`����?z �m���?�	k����?�a�Kf��?��Z.H��?�������?�o|����?k�9���?P_� ��??ZL:���?��L?��?���V��?JPڊ��?̉%����?�������?pk5���?�ߵ)���?���n���?����￲+�bf���xq�̿��IE���?�&݈��S1�w;e�?;E��EA��%,%޿�8�9��?�WX�7q�?Д��x��1�r���Ut.�=R��¿.�o���?ʉ�'v�?��TW�c�?�Պ���?P����?"�r�T�?5\�־&�?h�w����?�|�:(��?5�gt���?�����?���9���?��:G���?�T���?e(�ǷS�?��Z�@��?�q�3H�?:rЪ�q�?�97fW�?wM�˵�?��c��?�/Mh2�? ޶'�I�?���`}4�?�y�I�Π?��E���?�5h��A�?DY�hX�?]���O�?���v�Ċ?��C�?���W���?f�B#��~?Dc���y?K^+�SPu?����a�q?�9;a����x$�?#���).�?�}f��ҿ�_/����j,j�ȿ��R~��?x�]Z:쿵N�}��ؿ�Rx���?ws�1��?d��.��?��8m�)濓,����v����V��Yy�怡�[�q,�
Կ��Y�E�����ͮ�?j	�A��?�F"���?E����]�?T�O5~��?Η;���?i鿠��?tD����?�ȱ{��?���;�?���{�P�?�Xl���?TC���?�{G����?������?�<�%(��?R*q޻��?H��b���?=������?V��c���?�/�ŕ��?`�I���?����?�W����?������?�c��L��?�+'���?�M�A���?�	����?%m�����?<Ճ����?��n[���?�Hݗ�g#�P� �HY�&��?��P���?����Z���GSI��?g�ؘ��ӿ̼kRd.濡��� �?�<�[/5�?���
ڿ���C) ˍ^鿒��q/�Ϳ����Q�?���?7�Gs���?�5�`���?G	-�?��(A��?n����?y���X�?�ŮV�/�?���@LO�?Y'�G9��?�-��$�?��pt c�?�pڛH4�?\XG"�?������?=F��G��?��	�LI�?D��
�?�v��Q��?�b�l��?��e���?-�NP���? �x�Ĥ?q��VF�?<p�	���?��gmN�?�Im���?��幉�?��S���?����-�?'���?�3q�ө?�o�T'Vz?#�c��u?�[�r8r?�! �E~�?��0����?Ȅ�D+��?�x%�Dz迠�	B��?q <�������$n�?j�f�翽����⿿��
�?_��;�?��\:l�?�Ӷ[���s#Q��"�3�}�8��!濣�'��3׿�T��1���H�S���?Gօ���?� v�h%�?i�`���?��&!��?{d�J��?<�����?�kQ(���?��!��?��:���?B�gG�?��Ep��?���I��?mw�����?�+
	���?.R>���?}Y�+���?�8���?8h�A��?���bB��?�ϮV��?������?�(�����?�Ǌ�t��?��z���?�a[�B��?6}��?g�;m���?�
�V���?������?�R���?e0@���?��G���?��6�O�?#��L�?L
�ſ?<8��㿆\f詈�?dO��?M��)��E�:{�?z���[+�?!� ^}п/GGE`��9v�;�Y�ɱ�`Կ|�&y#d�?=	.Υ��?�`$�a,�?�%��S��?z��V�j�?v-m?-�?�Շ��?�V�����?�EH���?�������?!r߄;�?9�b5)��?�p�����?��v�֡�?YmR��?�n`'�?�9�GJ�?�|��Q�?�8����?E�1��A�?��W+'��?� �)Ѯ?���$��?ޖ9�S�?���r���?A{�����?���g���?�d��k�?���$��?���ZA�?1�27���?��^W��?�7sB�?�z�_{?3��Ctv?���B��r?��N����?T3 ��j�?e��F��?1��ĩ�ￌ�Pe�?�?w������9ՠ����?3U��)࿐��n0���j�?ћ��k��?�G�x���?l&^I��)>�ڣU�;I�����\�v`��翥I��Lڿ�͛�]}��;M�_�O�?Ԇb��H�?!� Z �?l�|��n�?Oh>�E�?%BbK�?�mV�׷�?��垷�?�[4j�?8d�����?cs�<�?��|�x�?�b�+p��?iO�;��?����,��?~a{����?�������?���%��?D�E���?ev�����?�T���?7����?r��<���?n���^��?��~���?Opf8��?�s��u��?I{�v���?*�����?��F���?Yy]���?�?/���?�li��?�R�c�P�?E����?O^k[�ۿl����Jǿ����#�?�u�I��?(J+����M�kn$�?�X�/�?�r�3����U�TL��:ȏ�1����1��ٿ�	��O�?\M�֊$�?�O[�q�?�m�&��?Bk̮��?{�{n��?_��ő�?+��)�H�?A�����?���F�?E����?EiQ�U�?���f�?��Y'1�?Mx�E|�?�-��3��?�/6�3��?-�̼�{�?�{��r�?�e!�s׶?ݯ����?�����?tg�O�?��%G�?=�+�
5�?\�AJFJ�?[��2�?��*��? ~���n�?:cq���?[����?����?�w�(���?2�Ė�{?Ֆdw?�q��4s?������?��m��?R=�ID�ѿ{�k����<w�?Ϥ��y��D�H��?�ua=п�N���:�єm�@�?�X.OV��?���Q��?��	ۿ0N��G����բ w￵_t�r���b�e�Rݿ�mZU���ՙ�y���?*�A^���?���Y���?{�����?*].*}��?�9�x�?����݋�?~�{�ژ�?Y?F&�T�?03&���?����2�?[�H�q�?]'&�u��?�M��Ȼ�?m��1���?�1�~S��?N��c��?�#�[��?T��-��?2h�т��?:������?" �Nj��?z�����?wqn�H��?������?�j��-��??��n��?���^���?aP�a���?o[�����?�蠭���?��k����? ����?�}l>��?�6
���?�U�_� �פ���? �=�Uy˿�V���?C?Jz"����20���?ư`5C$�?אO��ڬ?:Q8��뿐���HO�r=N�~߿�忋`i�?�J�M��??50���?�����?@��ː��?�5g ���?{��K�?M��S���?��j�~�?�\��|�?��8��?kg+�:��?Z29i	��?%��U|�?�\\�3�?M2��>[�?JqL�?��B����?�r%�?�=��l�?UR7~�?�
��7�?���lB��?IՅX�r�?.������?
�
�?��6l]י?Y�,ՙ~�?zɹ���?q����?���$��?p�����?O�,C��?HB�g�x|?/�&}��w?<�����s?�!h}�W忕S���ѿ��q�d����N��v�$���?�sA�,�7����?h�޽�ٕ?��c�����Tx�r�?N�A����?A�x���?Wi�$x�Կ�Q
��뿐LZ�����+q��7Z�@"࿞�`n�Qƿ��
��B�?C��϶�?��>�T)�?�`�W�u�?^=߽C��?�!�z��?�)>�^�?����Ty�?���>�?��XR��?�$C�'�?��f�Rj�?]DZ��?<��?��?�SV��?�O�Y���?zf�7��?0E*���?x'!���?�u B��?A̯���?�d�:��?�Yd��?�8�1��?�*S���?]�L�"��?D���f��?{��$���?
��ö��?�VuU���?x�����?N:����?��uc�MĿ���@)#�?O�|;P2��f-`
���ڤ�_�?�Z�i�r�`�E�?�`$8����Y|~�?���F���?�:�K�?�r�t.��9M�.@�$mk�⿐/�4�?���g��?��&�1��?w{<�?s[��?P�v�?�?���un�?�72v.�?t�S��? �e/���?�e�I�?l��Ђ�?�a<�g�? _��C��?��q��?���O%��?������?��S�?~�=�ؼ?p��u�?>t����?�Z�ڒ��?�m�̨�? ���o�?g�B��#�?�	���ן?�d�m�|�?�%�?9ƹ:aS�?�&/^|�?V���v[�?�&Kh�?:�Q��?Y2�/}?<�i�$Fx?d��I�0t?߬`�H��6>/Uѽ����L�￙?h՟?���Ǭ��?)䏘�%�*~�>��?f[�"��?�o�����$�J�?R�.�C�?rE�n�?��Y}�˿��Q�s�ke���￲��3�x4�̬��ח"�\�˿>-�dr�?ȁ����?�b�Hz�?p1���?�v��#7�?��(���?*���0�?3K��Y�?�y�<?(�?f�U���?�*u4�?.��K�b�?��ƿ��?�����?�
k���?�G?���?O�o��?zs$����?ݧ��	��?cw�-���?q�F��?h�i�	��?�H#PB��?~�����?�	I$���?�����?���>_��?���Ȑ��?˫����?f������?��I,���?�Z�����?�L�$T��+�:�ň׿E�m�1��U���J��c���e�?o��H$�w���(�?�a�+���}%�R	ɿ��J��?�� tX�?� 8��忷݄���� �^�BW俀�-������ڀr5�?�h� ���?��dO:��?���Db��?��I>��?S2�	1��?���؜�?�*�=V�?�Ќ�UA�?�������?C��L��?�t���?_^�M�U�?�K@%���?<�8��?�D��zM�?QS����?J"!�&��?nK�ꗸ?���4w�?şs7�?���SU�?Y��d��?���i��?<B^HO�?��J�"�?��2����?����Œ?�m�)�:�?�������?��@n��?u>�Q���?�#��=�}?ß*���x?X�Ůt?�U�\�ٿZ�Z������v���濉rO~�=�?��Q��?fb��G����#�?w�>ȻS�?e��)�aￌFk$��¿��>\���?Kѣv}�?��|�b����`���!�����c� 6쿘Ѓ���FE*��п���y�?@S�8��?쫯!'��?�b{sHs�?�>&�$��?��!�5H�?s͌��?�aL8�?����0�?��U����?,�����?퓆�[�?�ȧ���?4W >��?E�R@��?�~�/��?K�����?^�M����?·}nr��?x-�P��?i�@����?�m�����?�SD���?�� ���?ɳ����?��+��?�MOW��?�-K���?[�:B���?��#���?��Z���?��C���?Q����褴���V��z���S~F.Cؿ0KJHe��?D�+��Wn6����?���G-忓pJ�qڿ�O�i,�?����o:�?���Ot�,�������G����x�/c������N��?�Te���?;�#��?(['���?���X��?�.�rm9�?LT�<��?�]6����?EA����?��-mѡ�?������?q�w�g�?��_ou��?�U��Y�?|(�?dx����?KFb��)�?�C��j?�?Pw�V-�?�_8y��?U?�n�?S����?��V'�!�?�2����?;��l���?r9�YfǛ?�v:�?
�l�38�?�!��	��?�5���?�|z��?J�E f�?�O��t�~?Z	4�Duy?)�ŋ�,u?�as�|��?��2���ֿM��ʣ�����>���?�`S'�|Ŀ}��niĿ�C�����ዋ��?��T�$��M��Pտ+Iak��?�Bc��$�?4��h86d?U��*~��G��}��ￍ�hq����?iD��D�Kӿ'���z��?��c6 5�?I5�(�?m�����?�A�My�?Mc��?�)�u��?H5W?�?�?h���?N�V�,��?�Խ�~�?�g��S�?���B��?ry�/��?P�_����?�>+I��?y�����?&/�����?��Ο���?��v���?磑���?�m���?R&�0���?�P2���?�P�����?CYk ��?�7&.O��?������?�2>^���?]�r���?R�~���?e������?A��t �?�0��[�쿐��4~��"���?��"#׭�?�~�*��u�U�?i�)�y�ۿ����}~���N��?�����`�?n2OB�ݿ�O!k���RΝ�|��v�C�ȿ㙢���?W*�Ś��?��n��?�]����?V��yA�?5*����?Eor�?.�'�?@�-��?S�"�;&�?a0"��B�?��V1��?jNظ�.�?�y�$�?�L����?�A\��N�?fߍPY��?�=o���?xe��¹?Vx
p�?��+xֱ?��*�X��?OM6��?����N��?T&5�?�w;�l�?�Ĥ�?�SX���?�H��[�?JC�,l6�?Y�Lox��?Q�*,�ӂ?���_�Q?��P��z?B�%�u?D��d���?&
XŸ��?��k���?�J���q�?÷N��we�+�?{�[���ڿZOi��?s��Ps`�k����-�e��?��?v�nW�?^{@�0��?�S���������bￃN��:���v�щ�Ax��տ�3o�b��s�ԗ=��?�F�E@��?�Uŀg�?e��I��?߽*�P��?9��D��?� �¹��?i���{��?�6� `��?]1�L���?[ʱK�?UF+���?�E^4��?� �b���?�3k��?�i�9��?�G���?�e�-9��?���w��?�!ҵg��?����o��?�������?�������?��1}��?h��d���?�O�F��?y����?��b���?�j�����?�&����?�M2����?�=�:�?��FYѿ�	�i�ѿ��'*��?� ^���?\�~O���;_���?�`��^�ſ$])�`���鈘�?QA_.�?�2\�ֿ���Kc7�nh�,VB�b��-�1ѿx��?#,����?-��`ԍ�?_b�R���?��6L�H�?Pڃ�)��?R-��f��?��J���?�����`�?)y?��z�?%F��y��?*#x^=f�?��ֻ��?)A�+Yc�?���?[�?4J�����?�n'�� �?E���ť�?�_�_X�?Z<ց��?&��(>�?V8��Z�?����@�?��(���?��{Xgy�?�9o_�?~D�$N.�?[�[��?q�:ں�?i%���ԋ?��'L(&�?L��2A�?�@����?'SLwd�z?(o��(v??�:p��?�9	<���?��=D��?��&�=&�?.�\z�쿽!�Q�?��4�!�_������?#�̔qI俜�bR����%�?85��q�?D}-�O'�?̤�j�I�������E�~����W1n
����?b�ؿF�b"�!��N��]��?���W9I�?d���T��?K³�5��?�vHLw�?��n�?-?qv��?(����?G˛�3v�?�
�����?˶R>�B�?p5���|�?�?�8��?G�&:)��?�G���?���>���?�,��?6���?x܃���?�����??:��?[ܹ����?~]4���?�=�ik��?�����?ׄ�Y>��?� �z��?��O���?G -���?߭����?e%�N���?��<s��?����?J�$�;i�?��["�?����s���^\࿭��ƚR�?b�'�W�?t�O;�쿴p�q��?nK�@��?ݜ	T��˿�b.�9B���h���4N3A'�տȎC8S�?Cl�ԕG�?Ƹ�O���?�����?h,bCy�?^���G�?�&{��;�?ջ����?�ߋQ��?KMV���?�n"R�i�?��N���?�Jv��?�-�Ej��?kV8#a��?K4�KO�?��.�k�?Jz��m,�?
 -%g��?'����h�?�%���?)PۗO�?Ƹ~�4Щ?��M_/y�?8���ܡ?@�;�h��?��U׷�?Y4m��?�s��?3v{�s�?FY�ة�?D�0Ϻ��?��_�?���Z�;{?���G�v?�Iծͨۿ�s��?��E��^�?�щ����?v.&"D��ⴇ���?Id��q쿧�����?'��[$Fܿ���TI�j6�G��?�����;�?>SX���?A�,�߿'Sm�R����٨e�9���Ԅߵۿ�-�+ e���p�֜�?���.���?$7��S�?<T��O�?0���.�?�A"�:�?K�Iv��?뢶����?�qu�d�?�e0���?��%�?:�?����w�? i�|&��?8)XHW��?��i���?��q:���?,d� =��?^0_���?�?;����?�������?�F�Y��?J�?����?������?.��;Y��?D���?¥5��?eImt��?U�%���?S{����?������?�k�����?����|��?ŉ���?,K@��?I  /%�?��%
�޿��sr|���B���Bx�?�mp�e��?���+￱����?w�Vi�?���)W��Af%��LG�$���҅�aPڿ����ql�?W�b�$��?"��� _�?�������?Ǣ�qD��?��q�3��?Q�*h��?�!ՈqS�?�(�=��?8��5�"�?1� ���?�] �c�?i\�Dr�?��f
W�?0Y��?������?&�-�,��?t�����?������?�́�W�?w�eC�?���ų�?L�H��_�?���ܝ�?�M�#@�?e�\�\�?��`A�?8H@��?�Ea�.y�?��p`�?�Rλ�-�?�<�C�?�,A)��?��	5��{?bU��%w?�?UP6��(�C1��?��r��?�dT�xտ^�Ǯ��G;t����?����D���b2(��?ːMb�̿���R��Y�Z[7�?�|�/���?VT��GR�?�"�Vvqڿ�� E�+������P���W?M���-��RҙݿWP�P���\��N�?�>5E/X�?�� ���?���@��?N�(0��?��|��?uc�7���?�l�]���?�ag�R�?��iX6��?���1�?���q�?Jd's���? ���u��?�5ᙏ��?k�e�+��?,cteH��?C,H��?��N���?�I�y��?fUD?���?;!�e��?�S����?g��F��?�õ����?( �,��?H6O�m��?����?Eɒ���?�����?� ����?�O�̊���r���a�?�:�Mw8�?��^�r�?�;�S����&�|m�?\�i�ǿ���Bw�?�j���￥��<��?N|�	c�?�}�ؿ�?lA���D�0y~DQ9�E�=ݨ޿>�p�ݼ?#� ���?��=�޲�?�-�'��?�P����?+�b���?M��h���?������?Ig&��v�?��nu�?5+;>ʍ�?.�����?�� �T��?����t�?��`&&�?���4�O�?�>x8WB�?�iUk��?A����?��$�a�?0����t�?:_�C0�?=�B�?�(h�?4J����?s�-�?��^�ʙ?�i�=t�?m�7Yؑ?�l�񰯍?>�M7��?M�8̉�?�� �D�?Ԅak|?;FT)�w?�W�|���m�|���e(̿�KS�i鿎�^���35|���?7&��3r�`s?��e�?�uYC?R��4��\3��;�?�������?��-ɾ�?&��{տ�)�o��|�Ζ��ￚǋ�J��sHu?�V���ſX7����?G������?�h6�?�;{�?1�9� ��?�ps�Y��?$�!-Cb�?����{�?�.��q@�?��r�|��?v!��(�?r���j�?)Mձ���?�Y���?���؅��?- �p���?��hiN��?�Ű���?=�����?����&��?�����?q _G>��?q�Ģf��?�5F�3��?;A$����?��^�#��?�Q�g��?0�̊���?��s
���?/�E����?�DV���?�g�H$��T��ь�?t��i��?�8���?�� #R��σŹ��?�6pĨ߿XT����?~ ֥�(￯@Z���?j\{%L��?��D�<r�?u4qG�E�Ao�D�2qBj�?�2���?%#*�D�?mD*��?ڡ-��N�?��|���?�en+�?�E�T�?T�U���?_|�	��?�;倥��? &���?SKG.2^�?|��,\H�?CI�|���?��^�Ǿ�?9��B���?K��s��?U���8�?G�;$��?��n޷?y�tjeܳ?����S��?rn�=�~�?3�:wߦ?��U)��?(�.d��?[^�1pT�?��4���? ږ�7�?F���N�?���4�?��T��?K�7`p�?�6�ˣ}?��R�9!x?F93��<�?Z�L����w�R鿒�<��[�D�ݻ���,S�?��{�뿩&�#�%�?��W�$�?�aMLI��f���?L�����?�\R���?�e�}��ο������꿴�g������u���0�� �7���c��wʿ��F�D�?��mkW�?�(��+��?�T�4�?o����M�?��$��?OU}<�?�w�6�`�?�:�/�-�?�x�F���?	�ZI��?6�D��d�?B�<g��?T�ɂ��?�-'q��?V�K�Q��?}��,O��?��=a���?4���-��?W�4F���?���kW��?������?M	�J��?�$)K ��?v�����?Iu�d��?xwu&a��?�5���?������?��Bf���?�������?�����п�1���忟��]ok��75��H�޿@'=������v��?�T���loQ`X��?�;b���.c�Z3�� ~�ɨ��?���fh�?�U���(�Y�!��k�3!f㿼-,�J��%	?���? ��-2�?b
H�+�?��`���?/!��Km�?FE����?�w�o�?灴i*�?�<	4�?�Kt��?Iaf��?��H� ��?4��;)�?[J�<W�?�7��O�?_n���?�}�eG��?���OB�?�ocF_Z�?wb��C�?��%\�ܰ?�%��G�?{Z;�V�?�԰�8j�?W�?.[&�?H�+��ݚ?��t�Y�?8��߬��?�:�GR�?�Q�!���?=�e�d�?��Z�{ˁ?����3�}?=HLJJ�x?���o ��?���sx�=��A������P�ڃ/��?�R����?mӴ<'�nL����?
���~W�?;7B������o��Ԟ{4A~�?�2jk�F�?�U~#llÿ��zs�3ԁvI��b����6�>��`��=B-�ο��?��?&����?��
��?#��M��?a(� �?���k�c�?P}[(�?iĘ�E�?���!��?�$�"A��?*!�X��?�h2�=^�?������?�7�q��?�qQ��?*G�R���?.��J��?���6��?3 ���?W��{��?����?�@�x���?�*r	.��?ҝŃ��?0��o���?w�&���?8ٹ�Z��?�M/����?��հ��?�3;���?C�����?�P�t�r�?]U���9�ƭ=忬�">2�d���)�$+��?��Z�����-y�f��?!�xv=��
)T�>}ҿ�z0*�?p�jwA�? ��e修�X���=�{)�E忚��NႳ�al�=��?�?\�z^�?eVJ���?�)�(��?�Y}[���?멿�j �?�>���?=�x���?�'� j�?�ۀ�K>�?eg�c�W�?���?�C[[���?�y�ƃ��?���l��?�{�}��?)�i���?��Yq׽?UO崫ָ?��z��?@��2�?���ǝ�?��KΧ?
�ғͣ?��a�y�?��Ph~g�?�IC�r˖?vࣈ���?A����?cE<�?�l�e҅?�W�0�&�?q��9�1~?�4M�Zy?b�|(���?U�"��N�?c�z��UC�⸍޿��)� �?d M��ڽ?��yAeؿ���hz)�?�����P�?�WQ����#�� �Ϳ��Ԗ���?wM���?'l��G�����H���>,A,��
ѥ���U3��㿟	��ѿ�ۭ�Y�?Ή�i�H�?,@�\��?�ג[�;�?L��m��?�JP��+�?�D����?���B�)�?E�.�Y�?��ch���?ѯ��%�?=RúW�?G��?v��?��Z�P��?0�D�&��?�VeY��?��@��?FlV3~��?f���1��?!���#��?�l�����?�wOQ���?q���?��V���?���y���?���D��?D�S��?�й���?g�Т���?Pf����??P�����?Ǥ$t��?�z#ʊZ忟�&,�￞��A������ο��&i2��?�&��I���9><{t�?}���v��4k�P�ݿis���?�H��P�?B?/����t�L���+��mJ"7����pܭ�ĩ�?Ƀe|h~�?"S
Lg�?OS����?�ln����?���Q�?'6O*�#�?2~�W���?�`��K��?V��Y���?�~�y��?�}܇�?������?P8�����??��$O�?5�3l��?y?(� E�?�fQC�l�?�`:�R�?��C �?h���?�e_"D-�?ŒݳE�?��W
�0�?��}�ˠ?�����?7�2p�=�?�� U�?�|py�?jd�����?�fHT�?�?2㣟���?Jm�R�~?��6(k�y?k�����Ŀw�4K��?�R�7^�ÿ�W#��?�ܔe�?���ѿ�q-S뫮�4.�@օǿϾ{�Vf�?W��{�T쿻�>��.ؿ>ϧt��?�*�쐽�?\:c��Ȟ?�9#�9濸�⌰ￆt'��P��
�#ͳ�俼���p�ӿ�o�fu�;?�֞
��?����?�v�C���?����`�?"i8���?c�q�,��?�	[���?��/����?�x4���?�q����?�g�Q�?L�_�ۆ�?��j ��?T�rv���?�BC����?[5N�1��?w\����?ťa���?������?	�a����?O�
T���?��� ���?+,����?�?=���?zk���?�A�M��?�=�;���?�s�_���?)+�����?�4Q���?�x�p�V�?���4�۹?�Dz��w��ӧ�i��5Y����?�=V��?�����e������?��`ڿ9��1���JQ��'Y�?���̳�?���ݿ��|���k�%����cـ��ɿ��2=e��?H|��c��?���i�?'X�B^��?�sz.�?o4��̟�?��;�z�?l.w�/�?X��	�	�?�e�AT-�?��N��N�?���q���?�?O��7�?Ww���?2�����?���JY�?U�O��?!ރ���?��C�2Ϲ?�%^\�z�?�e׀߱?�=�侼�?�Gn���?Kz%G��?�k�S�?v<��z�?����?��?#��[)��?�M�q�c�?X��C�?��B�v��?JO�܂?�s�}�`?�
�{z?�X蔒b��)6!���?�dN��j�?C��Dqr�?OLd�?��7��ȋ���$�?O���>mܿ5�b��'�?��u[���G��Ό��Q� ��f�?nc�ـ�?8�B���??��ۮj�kv�X￦	:Q����k%�N�忟%/#(ֿ(%"�|��c�tq]�?:Bh���?��{P"\�?N2B�j�?c��p��?v�Ӓ��?H](h���?k��Xr��?O����?�]����?�3W�RJ�?!F��*��?n���?�&
���?�3��B��?5����?,��y��?4g�+��?�	�n��?=[zLa��?�'�k��?{������?�������?�޹{��?(�`���?�VL(F��?���m��?�����?�v���?���l���?��E����q�p�E��?���[տR�=[yտ8��1��?��t�HO�?�d�9e^��H�g��?��1�^�ȿ,��YY�E�b�?"$���?����m�ֿ�G�G�(�"T����l�>�п^�u�a�?�:���?�@f��?�K&E��?��zD�?H�c���?��Y���?>��d��? �i�X�?��R�s�?F�b����?����|[�?%m���?c�<��[�?�>D�BN�?��<V��?���O���?Eƭ���?t$�mK�?���� �?�r�2L5�?p%O7L�?�Xb�4�?��E-���?��>�p�?�
��?����"�?�+��R�?�b�Yɲ�?0I�Rǋ?�ۡ��?��ka�7�?ž�r�?[�J틗z?'�Lƴ��y5���?qVd*�?~�i�%�?V��2�?=ou/�� �&;!�?,��2�y�G�_ �c�?����w��}�vZ5��n4/��w�?��}��?������?��}⿫�g����|�Zi���=[��Ѭ�[RؿA*�����%2-;�?�V���h�?�b6
��?�[Ѵ��?�F�^}�?<~�yYr�?~
��z��?�����?h�ثw�?���h���?ɍ)�mC�?_p�b}�?S���?�߰e��?��$���?H.9��?VZ1�@��?������?��F��?�4�� ��?\���>��?8���?��{g���?�z��l��?$9%���?�`?��?�ᾇz��?�!D����?�n����?�Q�����?U
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes

:7d^
addAddV2Reshape:output:0Cast:y:0*
T0*+
_output_shapes
:���������7d�
!self_attn/StatefulPartitionedCallStatefulPartitionedCalladd:z:0self_attn_27318self_attn_27320self_attn_27322self_attn_27324self_attn_27326self_attn_27328self_attn_27330self_attn_27332self_attn_27334self_attn_27336self_attn_27338self_attn_27340self_attn_27342self_attn_27344self_attn_27346self_attn_27348*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������7d:���������77*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_self_attn_layer_call_and_return_conditional_losses_27317�
flatten/PartitionedCallPartitionedCall*self_attn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27357�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27370dense_27372*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27369�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_27386dense_1_27388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27385w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv2d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^self_attn/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������: : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!self_attn/StatefulPartitionedCall!self_attn/StatefulPartitionedCall:%!

_user_specified_name27388:%!

_user_specified_name27386:%!

_user_specified_name27372:%!

_user_specified_name27370:%!

_user_specified_name27348:%!

_user_specified_name27346:%!

_user_specified_name27344:%!

_user_specified_name27342:%!

_user_specified_name27340:%!

_user_specified_name27338:%!

_user_specified_name27336:%!

_user_specified_name27334:%
!

_user_specified_name27332:%	!

_user_specified_name27330:%!

_user_specified_name27328:%!

_user_specified_name27326:%!

_user_specified_name27324:%!

_user_specified_name27322:%!

_user_specified_name27320:%!

_user_specified_name27318:%!

_user_specified_name27190:%!

_user_specified_name27188:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
%__inference_dense_layer_call_fn_27775

inputs
unknown:	�*
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27369o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name27771:%!

_user_specified_name27769:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_27795

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27385o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name27791:%!

_user_specified_name27789:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_27573

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27357a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������7d:S O
+
_output_shapes
:���������7d
 
_user_specified_nameinputs
�

�
A__inference_conv2d_layer_call_and_return_conditional_losses_27598

inputs8
conv2d_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:d*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������d*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������dh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������dS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27608

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_27786

inputs1
matmul_readvariableop_resource:	�*-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:���������f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_27588

inputs!
unknown:d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_27187x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name27584:%!

_user_specified_name27582:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_27385

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_27357

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����|  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������*Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������7d:S O
+
_output_shapes
:���������7d
 
_user_specified_nameinputs
��
�

D__inference_self_attn_layer_call_and_return_conditional_losses_27317

inputs0
matmul_readvariableop_resource:dd2
 matmul_1_readvariableop_resource:dd2
 matmul_2_readvariableop_resource:dd2
 matmul_3_readvariableop_resource:dd2
 matmul_4_readvariableop_resource:dd2
 matmul_5_readvariableop_resource:dd2
 matmul_6_readvariableop_resource:dd2
 matmul_7_readvariableop_resource:dd2
 matmul_8_readvariableop_resource:dd2
 matmul_9_readvariableop_resource:dd3
!matmul_10_readvariableop_resource:dd3
!matmul_11_readvariableop_resource:dd3
!matmul_12_readvariableop_resource:dd3
!matmul_13_readvariableop_resource:dd3
!matmul_14_readvariableop_resource:dd4
!matmul_25_readvariableop_resource:	�d
identity

identity_1��matmul/ReadVariableOp�matmul_1/ReadVariableOp�matmul_10/ReadVariableOp�matmul_11/ReadVariableOp�matmul_12/ReadVariableOp�matmul_13/ReadVariableOp�matmul_14/ReadVariableOp�matmul_2/ReadVariableOp�matmul_25/ReadVariableOp�matmul_3/ReadVariableOp�matmul_4/ReadVariableOp�matmul_5/ReadVariableOp�matmul_6/ReadVariableOp�matmul_7/ReadVariableOp�matmul_8/ReadVariableOp�matmul_9/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0t
matmulBatchMatMulV2inputsmatmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_1BatchMatMulV2inputsmatmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_2/ReadVariableOpReadVariableOp matmul_2_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_2BatchMatMulV2inputsmatmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_3/ReadVariableOpReadVariableOp matmul_3_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_3BatchMatMulV2inputsmatmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_4/ReadVariableOpReadVariableOp matmul_4_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_4BatchMatMulV2inputsmatmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_5/ReadVariableOpReadVariableOp matmul_5_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_5BatchMatMulV2inputsmatmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_6/ReadVariableOpReadVariableOp matmul_6_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_6BatchMatMulV2inputsmatmul_6/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_7/ReadVariableOpReadVariableOp matmul_7_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_7BatchMatMulV2inputsmatmul_7/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_8/ReadVariableOpReadVariableOp matmul_8_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_8BatchMatMulV2inputsmatmul_8/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_9/ReadVariableOpReadVariableOp matmul_9_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_9BatchMatMulV2inputsmatmul_9/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_10/ReadVariableOpReadVariableOp!matmul_10_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_10BatchMatMulV2inputs matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_11/ReadVariableOpReadVariableOp!matmul_11_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_11BatchMatMulV2inputs matmul_11/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_12/ReadVariableOpReadVariableOp!matmul_12_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_12BatchMatMulV2inputs matmul_12/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_13/ReadVariableOpReadVariableOp!matmul_13_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_13BatchMatMulV2inputs matmul_13/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_14/ReadVariableOpReadVariableOp!matmul_14_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_14BatchMatMulV2inputs matmul_14/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�_
ConstConst*
_output_shapes

:77*
dtype0*�^
value�^B�^77"�^      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                                      ��  ��  ��  ��  ��  ��                                                                                                                                                                                                          ��  ��  ��  ��  ��                                                                                                                                                                                                              ��  ��  ��  ��                                                                                                                                                                                                                  ��  ��  ��                                                                                                                                                                                                                      ��  ��                                                                                                                                                                                                                          ��                                                                                                                                                                                                                            b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����7   7   g
ReshapeReshapeConst:output:0Reshape/shape:output:0*
T0*"
_output_shapes
:77R
ShapeShapematmul:output:0*
T0*
_output_shapes
::��]
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
valueB:�
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
value	B :�
Tile/multiplesPackstrided_slice:output:0Tile/multiples/1:output:0Tile/multiples/2:output:0*
N*
T0*
_output_shapes
:m
TileTileReshape:output:0Tile/multiples:output:0*
T0*+
_output_shapes
:���������77X
zerosConst* 
_output_shapes
:
 77*
dtype0*
valueB
 77c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposematmul:output:0transpose/perm:output:0*
T0*+
_output_shapes
:���������d7r
	matmul_15BatchMatMulV2matmul_5:output:0transpose:y:0*
T0*+
_output_shapes
:���������77N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Ap
truedivRealDivmatmul_15:output:0truediv/y:output:0*
T0*+
_output_shapes
:���������77^
addAddV2truediv:z:0Tile:output:0*
T0*+
_output_shapes
:���������77Q
SoftmaxSoftmaxadd:z:0*
T0*+
_output_shapes
:���������77w
	matmul_16BatchMatMulV2Softmax:softmax:0matmul_10:output:0*
T0*+
_output_shapes
:���������7dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2zeros:output:0Softmax:softmax:0concat/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_1	Transposematmul_1:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_17BatchMatMulV2matmul_6:output:0transpose_1:y:0*
T0*+
_output_shapes
:���������77P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_1RealDivmatmul_17:output:0truediv_1/y:output:0*
T0*+
_output_shapes
:���������77b
add_1AddV2truediv_1:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_1Softmax	add_1:z:0*
T0*+
_output_shapes
:���������77y
	matmul_18BatchMatMulV2Softmax_1:softmax:0matmul_11:output:0*
T0*+
_output_shapes
:���������7dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_1ConcatV2concat:output:0Softmax_1:softmax:0concat_1/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_2	Transposematmul_2:output:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_19BatchMatMulV2matmul_7:output:0transpose_2:y:0*
T0*+
_output_shapes
:���������77P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_2RealDivmatmul_19:output:0truediv_2/y:output:0*
T0*+
_output_shapes
:���������77b
add_2AddV2truediv_2:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_2Softmax	add_2:z:0*
T0*+
_output_shapes
:���������77y
	matmul_20BatchMatMulV2Softmax_2:softmax:0matmul_12:output:0*
T0*+
_output_shapes
:���������7dO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_2ConcatV2concat_1:output:0Softmax_2:softmax:0concat_2/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_3	Transposematmul_3:output:0transpose_3/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_21BatchMatMulV2matmul_8:output:0transpose_3:y:0*
T0*+
_output_shapes
:���������77P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_3RealDivmatmul_21:output:0truediv_3/y:output:0*
T0*+
_output_shapes
:���������77b
add_3AddV2truediv_3:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_3Softmax	add_3:z:0*
T0*+
_output_shapes
:���������77y
	matmul_22BatchMatMulV2Softmax_3:softmax:0matmul_13:output:0*
T0*+
_output_shapes
:���������7dO
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_3ConcatV2concat_2:output:0Softmax_3:softmax:0concat_3/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_4	Transposematmul_4:output:0transpose_4/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_23BatchMatMulV2matmul_9:output:0transpose_4:y:0*
T0*+
_output_shapes
:���������77P
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_4RealDivmatmul_23:output:0truediv_4/y:output:0*
T0*+
_output_shapes
:���������77b
add_4AddV2truediv_4:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_4Softmax	add_4:z:0*
T0*+
_output_shapes
:���������77y
	matmul_24BatchMatMulV2Softmax_4:softmax:0matmul_14:output:0*
T0*+
_output_shapes
:���������7dO
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_4ConcatV2concat_3:output:0Softmax_4:softmax:0concat_4/axis:output:0*
N*
T0*+
_output_shapes
:���������77X
concat_5/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concat_5ConcatV2matmul_16:output:0matmul_18:output:0matmul_20:output:0matmul_22:output:0matmul_24:output:0concat_5/axis:output:0*
N*
T0*,
_output_shapes
:���������7�{
matmul_25/ReadVariableOpReadVariableOp!matmul_25_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
	matmul_25BatchMatMulV2concat_5:output:0 matmul_25/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d`
add_5AddV2matmul_25:output:0inputs*
T0*+
_output_shapes
:���������7d\
IdentityIdentity	add_5:z:0^NoOp*
T0*+
_output_shapes
:���������7df

Identity_1Identityconcat_4:output:0^NoOp*
T0*+
_output_shapes
:���������77�
NoOpNoOp^matmul/ReadVariableOp^matmul_1/ReadVariableOp^matmul_10/ReadVariableOp^matmul_11/ReadVariableOp^matmul_12/ReadVariableOp^matmul_13/ReadVariableOp^matmul_14/ReadVariableOp^matmul_2/ReadVariableOp^matmul_25/ReadVariableOp^matmul_3/ReadVariableOp^matmul_4/ReadVariableOp^matmul_5/ReadVariableOp^matmul_6/ReadVariableOp^matmul_7/ReadVariableOp^matmul_8/ReadVariableOp^matmul_9/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������7d: : : : : : : : : : : : : : : : 2.
matmul/ReadVariableOpmatmul/ReadVariableOp22
matmul_1/ReadVariableOpmatmul_1/ReadVariableOp24
matmul_10/ReadVariableOpmatmul_10/ReadVariableOp24
matmul_11/ReadVariableOpmatmul_11/ReadVariableOp24
matmul_12/ReadVariableOpmatmul_12/ReadVariableOp24
matmul_13/ReadVariableOpmatmul_13/ReadVariableOp24
matmul_14/ReadVariableOpmatmul_14/ReadVariableOp22
matmul_2/ReadVariableOpmatmul_2/ReadVariableOp24
matmul_25/ReadVariableOpmatmul_25/ReadVariableOp22
matmul_3/ReadVariableOpmatmul_3/ReadVariableOp22
matmul_4/ReadVariableOpmatmul_4/ReadVariableOp22
matmul_5/ReadVariableOpmatmul_5/ReadVariableOp22
matmul_6/ReadVariableOpmatmul_6/ReadVariableOp22
matmul_7/ReadVariableOpmatmul_7/ReadVariableOp22
matmul_8/ReadVariableOpmatmul_8/ReadVariableOp22
matmul_9/ReadVariableOpmatmul_9/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������7d
 
_user_specified_nameinputs
��
�1
!__inference__traced_restore_28566
file_prefix8
assignvariableop_conv2d_kernel:d,
assignvariableop_1_conv2d_bias:d1
assignvariableop_2_self_attn_k0:dd1
assignvariableop_3_self_attn_k1:dd1
assignvariableop_4_self_attn_k2:dd1
assignvariableop_5_self_attn_k3:dd1
assignvariableop_6_self_attn_k4:dd1
assignvariableop_7_self_attn_q0:dd1
assignvariableop_8_self_attn_q1:dd1
assignvariableop_9_self_attn_q2:dd2
 assignvariableop_10_self_attn_q3:dd2
 assignvariableop_11_self_attn_q4:dd2
 assignvariableop_12_self_attn_v0:dd2
 assignvariableop_13_self_attn_v1:dd2
 assignvariableop_14_self_attn_v2:dd2
 assignvariableop_15_self_attn_v3:dd2
 assignvariableop_16_self_attn_v4:dd2
assignvariableop_17_self_attn_w:	�d3
 assignvariableop_18_dense_kernel:	�*,
assignvariableop_19_dense_bias:4
"assignvariableop_20_dense_1_kernel:.
 assignvariableop_21_dense_1_bias:'
assignvariableop_22_adam_iter:	 )
assignvariableop_23_adam_beta_1: )
assignvariableop_24_adam_beta_2: (
assignvariableop_25_adam_decay: 0
&assignvariableop_26_adam_learning_rate: #
assignvariableop_27_total: #
assignvariableop_28_count: 3
$assignvariableop_29_true_positives_1:	�3
$assignvariableop_30_true_negatives_1:	�4
%assignvariableop_31_false_positives_1:	�4
%assignvariableop_32_false_negatives_1:	�1
"assignvariableop_33_true_positives:	�1
"assignvariableop_34_true_negatives:	�2
#assignvariableop_35_false_positives:	�2
#assignvariableop_36_false_negatives:	�B
(assignvariableop_37_adam_conv2d_kernel_m:d4
&assignvariableop_38_adam_conv2d_bias_m:d9
'assignvariableop_39_adam_self_attn_k0_m:dd9
'assignvariableop_40_adam_self_attn_k1_m:dd9
'assignvariableop_41_adam_self_attn_k2_m:dd9
'assignvariableop_42_adam_self_attn_k3_m:dd9
'assignvariableop_43_adam_self_attn_k4_m:dd9
'assignvariableop_44_adam_self_attn_q0_m:dd9
'assignvariableop_45_adam_self_attn_q1_m:dd9
'assignvariableop_46_adam_self_attn_q2_m:dd9
'assignvariableop_47_adam_self_attn_q3_m:dd9
'assignvariableop_48_adam_self_attn_q4_m:dd9
'assignvariableop_49_adam_self_attn_v0_m:dd9
'assignvariableop_50_adam_self_attn_v1_m:dd9
'assignvariableop_51_adam_self_attn_v2_m:dd9
'assignvariableop_52_adam_self_attn_v3_m:dd9
'assignvariableop_53_adam_self_attn_v4_m:dd9
&assignvariableop_54_adam_self_attn_w_m:	�d:
'assignvariableop_55_adam_dense_kernel_m:	�*3
%assignvariableop_56_adam_dense_bias_m:;
)assignvariableop_57_adam_dense_1_kernel_m:5
'assignvariableop_58_adam_dense_1_bias_m:B
(assignvariableop_59_adam_conv2d_kernel_v:d4
&assignvariableop_60_adam_conv2d_bias_v:d9
'assignvariableop_61_adam_self_attn_k0_v:dd9
'assignvariableop_62_adam_self_attn_k1_v:dd9
'assignvariableop_63_adam_self_attn_k2_v:dd9
'assignvariableop_64_adam_self_attn_k3_v:dd9
'assignvariableop_65_adam_self_attn_k4_v:dd9
'assignvariableop_66_adam_self_attn_q0_v:dd9
'assignvariableop_67_adam_self_attn_q1_v:dd9
'assignvariableop_68_adam_self_attn_q2_v:dd9
'assignvariableop_69_adam_self_attn_q3_v:dd9
'assignvariableop_70_adam_self_attn_q4_v:dd9
'assignvariableop_71_adam_self_attn_v0_v:dd9
'assignvariableop_72_adam_self_attn_v1_v:dd9
'assignvariableop_73_adam_self_attn_v2_v:dd9
'assignvariableop_74_adam_self_attn_v3_v:dd9
'assignvariableop_75_adam_self_attn_v4_v:dd9
&assignvariableop_76_adam_self_attn_w_v:	�d:
'assignvariableop_77_adam_dense_kernel_v:	�*3
%assignvariableop_78_adam_dense_bias_v:;
)assignvariableop_79_adam_dense_1_kernel_v:5
'assignvariableop_80_adam_dense_1_bias_v:
identity_82��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_9�&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�%
value�%B�%RB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�
value�B�RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*`
dtypesV
T2R	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_self_attn_k0Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_self_attn_k1Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_self_attn_k2Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_self_attn_k3Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_self_attn_k4Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_self_attn_q0Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_self_attn_q1Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_self_attn_q2Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp assignvariableop_10_self_attn_q3Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp assignvariableop_11_self_attn_q4Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp assignvariableop_12_self_attn_v0Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_self_attn_v1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp assignvariableop_14_self_attn_v2Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp assignvariableop_15_self_attn_v3Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp assignvariableop_16_self_attn_v4Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_self_attn_wIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp assignvariableop_18_dense_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_dense_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_2Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_decayIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_learning_rateIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp$assignvariableop_29_true_positives_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp$assignvariableop_30_true_negatives_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp%assignvariableop_31_false_positives_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp%assignvariableop_32_false_negatives_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp"assignvariableop_33_true_positivesIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp"assignvariableop_34_true_negativesIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp#assignvariableop_35_false_positivesIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp#assignvariableop_36_false_negativesIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_conv2d_kernel_mIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_conv2d_bias_mIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_self_attn_k0_mIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_self_attn_k1_mIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_self_attn_k2_mIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_self_attn_k3_mIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_self_attn_k4_mIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_self_attn_q0_mIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_self_attn_q1_mIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_self_attn_q2_mIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_self_attn_q3_mIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_self_attn_q4_mIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_self_attn_v0_mIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_self_attn_v1_mIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_self_attn_v2_mIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_self_attn_v3_mIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_self_attn_v4_mIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_self_attn_w_mIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_kernel_mIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_dense_bias_mIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_1_kernel_mIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_1_bias_mIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_conv2d_kernel_vIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_conv2d_bias_vIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_self_attn_k0_vIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_self_attn_k1_vIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp'assignvariableop_63_adam_self_attn_k2_vIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_self_attn_k3_vIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_self_attn_k4_vIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_self_attn_q0_vIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_self_attn_q1_vIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_self_attn_q2_vIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp'assignvariableop_69_adam_self_attn_q3_vIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_self_attn_q4_vIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp'assignvariableop_71_adam_self_attn_v0_vIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_self_attn_v1_vIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_self_attn_v2_vIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_self_attn_v3_vIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp'assignvariableop_75_adam_self_attn_v4_vIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp&assignvariableop_76_adam_self_attn_w_vIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp'assignvariableop_77_adam_dense_kernel_vIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp%assignvariableop_78_adam_dense_bias_vIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp)assignvariableop_79_adam_dense_1_kernel_vIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp'assignvariableop_80_adam_dense_1_bias_vIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_81Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_82IdentityIdentity_81:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9*
_output_shapes
 "#
identity_82Identity_82:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:3Q/
-
_user_specified_nameAdam/dense_1/bias/v:5P1
/
_user_specified_nameAdam/dense_1/kernel/v:1O-
+
_user_specified_nameAdam/dense/bias/v:3N/
-
_user_specified_nameAdam/dense/kernel/v:2M.
,
_user_specified_nameAdam/self_attn/W/v:3L/
-
_user_specified_nameAdam/self_attn/V4/v:3K/
-
_user_specified_nameAdam/self_attn/V3/v:3J/
-
_user_specified_nameAdam/self_attn/V2/v:3I/
-
_user_specified_nameAdam/self_attn/V1/v:3H/
-
_user_specified_nameAdam/self_attn/V0/v:3G/
-
_user_specified_nameAdam/self_attn/Q4/v:3F/
-
_user_specified_nameAdam/self_attn/Q3/v:3E/
-
_user_specified_nameAdam/self_attn/Q2/v:3D/
-
_user_specified_nameAdam/self_attn/Q1/v:3C/
-
_user_specified_nameAdam/self_attn/Q0/v:3B/
-
_user_specified_nameAdam/self_attn/K4/v:3A/
-
_user_specified_nameAdam/self_attn/K3/v:3@/
-
_user_specified_nameAdam/self_attn/K2/v:3?/
-
_user_specified_nameAdam/self_attn/K1/v:3>/
-
_user_specified_nameAdam/self_attn/K0/v:2=.
,
_user_specified_nameAdam/conv2d/bias/v:4<0
.
_user_specified_nameAdam/conv2d/kernel/v:3;/
-
_user_specified_nameAdam/dense_1/bias/m:5:1
/
_user_specified_nameAdam/dense_1/kernel/m:19-
+
_user_specified_nameAdam/dense/bias/m:38/
-
_user_specified_nameAdam/dense/kernel/m:27.
,
_user_specified_nameAdam/self_attn/W/m:36/
-
_user_specified_nameAdam/self_attn/V4/m:35/
-
_user_specified_nameAdam/self_attn/V3/m:34/
-
_user_specified_nameAdam/self_attn/V2/m:33/
-
_user_specified_nameAdam/self_attn/V1/m:32/
-
_user_specified_nameAdam/self_attn/V0/m:31/
-
_user_specified_nameAdam/self_attn/Q4/m:30/
-
_user_specified_nameAdam/self_attn/Q3/m:3//
-
_user_specified_nameAdam/self_attn/Q2/m:3./
-
_user_specified_nameAdam/self_attn/Q1/m:3-/
-
_user_specified_nameAdam/self_attn/Q0/m:3,/
-
_user_specified_nameAdam/self_attn/K4/m:3+/
-
_user_specified_nameAdam/self_attn/K3/m:3*/
-
_user_specified_nameAdam/self_attn/K2/m:3)/
-
_user_specified_nameAdam/self_attn/K1/m:3(/
-
_user_specified_nameAdam/self_attn/K0/m:2'.
,
_user_specified_nameAdam/conv2d/bias/m:4&0
.
_user_specified_nameAdam/conv2d/kernel/m:/%+
)
_user_specified_namefalse_negatives:/$+
)
_user_specified_namefalse_positives:.#*
(
_user_specified_nametrue_negatives:."*
(
_user_specified_nametrue_positives:1!-
+
_user_specified_namefalse_negatives_1:1 -
+
_user_specified_namefalse_positives_1:0,
*
_user_specified_nametrue_negatives_1:0,
*
_user_specified_nametrue_positives_1:%!

_user_specified_namecount:%!

_user_specified_nametotal:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:+'
%
_user_specified_nameself_attn/W:,(
&
_user_specified_nameself_attn/V4:,(
&
_user_specified_nameself_attn/V3:,(
&
_user_specified_nameself_attn/V2:,(
&
_user_specified_nameself_attn/V1:,(
&
_user_specified_nameself_attn/V0:,(
&
_user_specified_nameself_attn/Q4:,(
&
_user_specified_nameself_attn/Q3:,
(
&
_user_specified_nameself_attn/Q2:,	(
&
_user_specified_nameself_attn/Q1:,(
&
_user_specified_nameself_attn/Q0:,(
&
_user_specified_nameself_attn/K4:,(
&
_user_specified_nameself_attn/K3:,(
&
_user_specified_nameself_attn/K2:,(
&
_user_specified_nameself_attn/K1:,(
&
_user_specified_nameself_attn/K0:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_27806

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_27159
input_1E
+model_conv2d_conv2d_readvariableop_resource:d:
,model_conv2d_biasadd_readvariableop_resource:d@
.model_self_attn_matmul_readvariableop_resource:ddB
0model_self_attn_matmul_1_readvariableop_resource:ddB
0model_self_attn_matmul_2_readvariableop_resource:ddB
0model_self_attn_matmul_3_readvariableop_resource:ddB
0model_self_attn_matmul_4_readvariableop_resource:ddB
0model_self_attn_matmul_5_readvariableop_resource:ddB
0model_self_attn_matmul_6_readvariableop_resource:ddB
0model_self_attn_matmul_7_readvariableop_resource:ddB
0model_self_attn_matmul_8_readvariableop_resource:ddB
0model_self_attn_matmul_9_readvariableop_resource:ddC
1model_self_attn_matmul_10_readvariableop_resource:ddC
1model_self_attn_matmul_11_readvariableop_resource:ddC
1model_self_attn_matmul_12_readvariableop_resource:ddC
1model_self_attn_matmul_13_readvariableop_resource:ddC
1model_self_attn_matmul_14_readvariableop_resource:ddD
1model_self_attn_matmul_25_readvariableop_resource:	�d=
*model_dense_matmul_readvariableop_resource:	�*9
+model_dense_biasadd_readvariableop_resource:>
,model_dense_1_matmul_readvariableop_resource:;
-model_dense_1_biasadd_readvariableop_resource:
identity��#model/conv2d/BiasAdd/ReadVariableOp�"model/conv2d/Conv2D/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�%model/self_attn/matmul/ReadVariableOp�'model/self_attn/matmul_1/ReadVariableOp�(model/self_attn/matmul_10/ReadVariableOp�(model/self_attn/matmul_11/ReadVariableOp�(model/self_attn/matmul_12/ReadVariableOp�(model/self_attn/matmul_13/ReadVariableOp�(model/self_attn/matmul_14/ReadVariableOp�'model/self_attn/matmul_2/ReadVariableOp�(model/self_attn/matmul_25/ReadVariableOp�'model/self_attn/matmul_3/ReadVariableOp�'model/self_attn/matmul_4/ReadVariableOp�'model/self_attn/matmul_5/ReadVariableOp�'model/self_attn/matmul_6/ReadVariableOp�'model/self_attn/matmul_7/ReadVariableOp�'model/self_attn/matmul_8/ReadVariableOp�'model/self_attn/matmul_9/ReadVariableOp[
model/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?\
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
value	B :�
model/one_hotOneHotinput_1model/one_hot/depth:output:0model/one_hot/on_value:output:0 model/one_hot/off_value:output:0*
TI0*
T0*,
_output_shapes
:����������*

axis_
model/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
model/ExpandDims
ExpandDimsmodel/one_hot:output:0model/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:d*
dtype0�
model/conv2d/Conv2DConv2Dmodel/ExpandDims:output:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������d*
paddingVALID*
strides
�
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������d�
model/max_pooling2d/MaxPoolMaxPoolmodel/conv2d/BiasAdd:output:0*/
_output_shapes
:���������7d*
ksize
*
paddingVALID*
strides
h
model/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����7   d   �
model/ReshapeReshape$model/max_pooling2d/MaxPool:output:0model/Reshape/shape:output:0*
T0*+
_output_shapes
:���������7d��
model/Cast/xConst*
_output_shapes

:7d*
dtype0*��
value��B��7d"��                                                                                                                                                                                                                                                                                                                                                                                                                      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?�	�T��?�v>#��?y�Hoj�?�9@\j�?}vu��y�?�ǈ����?
��`���?��M�g�?�_�?:�?,�0Y>�?u�Щ3�?����)��?��{A}�?Sު�P�?ނO��f�?���L$�?b��b�۪?:�"��W�?��c#䕢?��n@k�?�p�/��?�i�d�?xi�Oˑ?;�� ��?bS�"-��?���z�?�CF���?}���PV|?X(�K�w?��ǚs?�m��qNp?>@MlO k?�jh�f?��W!K�b?�)��8_?p�e��Y?Aa(�*�U?�,C��Q?�f���M?cB)�h�H?��m}ڬD?z;3cg2A?7�*��<?�0=Vp�7?<�$^��3?\b�>v0?���b+?ꘫ��&?S �M�"?	�B�?��(J�?!W�Q��?q��8}��?�����?�?�pg�?G8�B[�?����B�?)���>��?YEb2�)�?�뎻k�?7�T��?5�6��?j�����?��L^���?��p��?�\�����?�	����?�O�K2��?ܙ��?e��C��?�4�mj��?T��K6��?��W���?�I��$��?�,�oh��?���$���?�-�t���?b+�����?�JG���?޽�����?9!�a���?������?ʵ���?�7;���?r�^1���?Ӄ�]���?�@�-���?�E����?�� ���?�e���?�H"����?�����?������??�����?�������?����?;IH����?z������?#?d����?������?F�����?5�����?�j��p�?��E�M8�?�͚t�)�?������?<���G��?G̭@¿�?����N�?iSJ���?'�����?�BO�ʭ�?�JMl��?��V��7�?uT{@]X�?D	��?���"Һ?�v*<R�?2�e���?�%�K��?9�+x���?�{k�^c�?+�2��ʡ?���56��?z�t����?gX�͇z�?�mv��?�B']$V�?Vq�ʑ�?_��?���?��ہiN�?AUA�E {?n@F��v?k'�G�r?�  �8o?�L�A��i?άM�)�e?G����a?C>G�]?\1,Ph�X?�a8ڬT?��w;g2Q?��I���L?e�;p�G?�o O��C?k�J�>v@?����b;?Je��6?��J�2?�3�B�/?rSW&�ڿ9 �ㆴ�����J��?}+�R�?;����l�?<Q���a�?n��<<�?	 �AD�?ykǤ��?�.�.L��?-B
�g�?6ԗ���?�`#�;�?����x�?ÛF���?.SYRܾ�?ܣ�����?*\O����?Y�zBi��?'C{���??�/!���?d��b���?�@�w��?�(����?�k�ġ��?��e�\��?������?�N@7��?w�uu��?�/���?��m����?@�����?��.���?�������?��{����?L~�v���?�8����?y3����?4�����?N ����?&�T���?GXD����?g3���?J	tr���?s�����?`@����?�$!����?�ђ����?�������?1�z����?[նm8�?i_�D�E�?����?oKQ� ��?hv�7���?$[0�H��?*��%���?��dv��?�Խ�.M�?���U�O�?�ٻ�K�?/����?�wT޽��?Q�/	�J�?�"�����?��"��?������?:���޶�?Q�JLԻ?-�)�X)�?-�L��E�?�̭�	�?L�_D7��?�Z@\�1�?��۟xv�?�g��#��?�"�ᓌ�?̇U�c@�?��8��?����g�?����u�?��%(X�?O��V��?�pC�c&|?�=
Kjw?4`�şys?��h��2p?�!
�n�j?��p�if? �$���b?P��F_?nW�u��Y?^���tU?����Q?(����M?��[^�H?�"��D?qK��QA?���"k<?K�1�7?�兾����,�ϋ���Y�޿�8���ÿj47�??*ѝ|��?����w�?�����?Ƿ'RO��?S�(����?[��Ts�?���鮇�?�A�y�H�?��X_I��?�!��,�?����m�?RJ�{���?3J�۹�?���s��?K�Hg��?ܢN[���?T?F����?�T����?���L��?��L���?�\5ZP��?��#s��?��R<��?��b����?vq�'��?���nj��?�1����?��{i���?�O y���?uZ����?j<K���?9������?+�m����?��&���?h�ȑ���?!�4>���?�˙f���?���3���?�����?c�#���?bِg���?D������?bX
����?J8�����?�O����?��ݹ7�pW�'t�ǿ;�(�e�? @�3��?I�(�� �?*T��?J�F���?�Db���?���[ec�?
qhڙ�?k!�>n��?�/w�?�?9�|�-�?¸l6C��?��_Mz�?������?���X��?E6��x<�?��<�9��?��� bپ?������?�q�\�^�?+q-q�Ǳ?�����?Z��木?�r
e{y�?�TD}�?L�rU�?K*�ld��?Q#b~��?l/�GN�?�&� �?u�M]돆?Xyi�:Ă?G�8?��R�z�y?�F��$�u?�*F���q?��-|�m?��7pf�h?n2$٬d?�Z��f2a?�uaE��\?����o�W?F�o��S?°p�>vP?ߧw��bK?і�l�F?�S=�B?��}B�??�$�����H�s�)������2���\��VkV�տ&�x�Y&������4�?�K���?���a�z�?���݃%�?'�1�5��?]o�B��?�2;���?c�;����?�d/�É�?Ɨ{z��?&�&)L�?ꗆ�p��?�(+©�?�'�M��?��1���?�6��h��?�z�f7��?��O��?���k���?x���r��?��Dhw��?�+���?8��z���?�%����?�M����?|�NH��?�������?T����?M�����?,�����?�58����?�dR����?�����?P��X���?��$R���?uva���?�n�����?*�����?%\Kx���?�����?X��D���?�GK~���?^�C����?�8�����?3�������rR��8��S��ӿ��M����?�������?���8�?��ҡ���?`
���f�?�e&�?�~hK|�?� ,�M��?f{���??o�����?��u��.�?���V��?���9}��?�*m���?u�:��?�����?%�ɭA�?�$���?��[�±�?��YC7�??�
}K|�?�Oekj®?<d��ޖ�?��g�yI�?.��L��?���]u�?kR�怘?��+ɹa�?�u�� ��?Τ�,�3�?�#֣=u�?��f����??�j��:�?��ni�z?:�+��tv?�E���r?;QJ>o?8�Rj�i?�K���~e?.�U2�a?�M�dK�]?��C�K�X?�W�gΓT?��}�Q? {b2�xL?�?5 ��G?�5z���C?�Jkp�'�?������וd=ef�G�u�V��͇t̯r翮�\��ڿ�kd�����n>?���?�u��h�?��ζ��?�#�t�w�?�*���K�?�K�hO�?W�{X��?x�	�ǹ�?BSYJ�k�?�:����?��	w�=�?4�R~ay�?"k�ɢ�?�0�y��?)u�fW��?�Ex[��?q�Ik���?�4��?X�(���?�����?zE�l��?������?��}���?jO!�`��?�TF����?�s�%9��?9'mv��?��mҠ��?��'���?޷�q���?0��{���?�2#2���?��J����?��Y����?b�����?�xD���?mGU����?�������?,^�X���?j(����?��U5���?�*�s���?ڈ�����?������ѿ�s��
��s���=�}�i�ӿ? J')�?�+����?Q�E�[E�?�å��?В� �b�?�L���?��q���?�W���?hߩ����?
���S��?�*�N"�?_�g�v��?77D�;��?˟�;��?p
����?����?�0u�7�?��/(� �?�*t�鷺?1���,�?�ڮes�?�^�-���?$mڡ���?1���7?�?���t���?�7�j*g�?�ˣ�u�?���I�W�?fZ{��?�78&�?��8�i�?�	=X�y�?�&z�2�?lXe�z?D2N��iv?)�8|��r?���Co?X�}]��i?��fO�te?G�pZ��a?�<��]?���]�X?�T6n�T?/�tQQ?�yɺ"kL?ŊC�1�G?�"x	���?q$�`\��?���A6	῔7Z�v�'Z"���):�Y�,呾��ٿ��>�紿�&, Y��?�n�)��?K�����?�U�X��?�L7R�?:	a��S�?�.4���?y{����?���7m�?�	����?p3s�a>�?_l���y�?�015#��?�{����?��nc���?�36��?ɍa���?;�;BB��?�<�����?���}���?x�b%��?]-I���?}U����?�nab��?��/����?���9��?t���v��?� .���?7�f���?^X�����?9�����?y�$G���?]b�����?��g����?������?�p���?������?3kC����?�O*Z���?�b)����?��6���?@Qt���?	
m��?-Xu��uܿ��ւk���>=V���OШ��ʿ���<�?]��1z�?���T��?��>���?�X��?���w��?|x2�V��?d��Z98�?�bg��?�� �l4�?��V[�?5gm�p��?��tg�@�?sjY�b�?6w����?H06�d�?�J�,G��?����?�4��۹?�N�`焵?a�A��?{/դ'˭?nu��ɨ?���A��?����&�?���XZ��?iZ����?� �����?.F���k�?��"-�P�?�W�v��?U�d��?��$p?����$&z?A�M��u?}g;r?�C�0n?�Öi?��� �d?n�dNQa?XKJ��\? ��2�W?dS�G4�S?ʳ5ԓP?anQ	��K? ٞ��?�d=�h��?Q%�g���?�!��y:�����
N�!��B���L�o�%`ֿ0i���ˠ�\yA��?�\*��}�?~��P�?�,%B*�?��!��?�4d���?���>���?��;|g��?L־a���?b�|���?����I�?��K����?��ժ���?�H��v��?LaN��?V{1���?��E���?"m\��?)��De��?���Z��?���g��?��$����?�+�����?���@z��?��[���?��sE��?%7��~��?H����?��I:���?�S�C���?;�o���?������?�.F����?~h�5���?��:���?��fP���?������?�
�����?{��r���?H0����?�^�A���?{�(�Ҩ�?9��
�2�?�ocx6��}�����%�(]_N���K�%���]<{C�?_������?���ڧ��?�|�),��?�H����?�bᯠ��?���~)��?r�U�T�?b�wX�?�?u��X��?�,L_q�?��q���?��_MT�?��6՟�?���9���?���K�?4.N��?�e>�c��?��:���?DJu�?GOɞ�?ej���R�?�c�Hˏ�?`�"𒙣?��"%�M�?1�?�򡑏�?���[Ē?Spt��7�?��X��?�f@(��?�*if���?>A��n�}?��g�^�x?>�u�Ԭt?�{� d2q?:�i��l?���-n�g?��+ ��c?�H>v`?�X��b[?{]~�V?E3�R?�M�@B�O?�/c���¿������?�MQ�'r�?����л���[qU�迚�o�U��xu�=2��{+a��P.p�п�1�@1ç?�m����?��n����?� �zOu�?+g�&���?���?I�?�We[�?*�"��8�?�,���?;?�٨�?8��?Ɣ@w'[�?���֍�?��t���?�4j�J��?�P!K#��?�U%����?M�����?���t��?��5R��?+�����?��o|���?��~5 ��?�+����?�Iџ��?�}�X��?I��nW��?��a���?� cQ���?�yx.���?�(b���?uݕH���?v/G����?�]r6���?p�@'���?
�-����?^����?�Y���?�#-����?n�����?9����?�/6&`�?GB��7��?��������h�쿳�u@2j��}Պ��Vۿ�.ֵ:��?�*�@���?|E8�?C����?i0����?�m��H��?乴�q��?����j�?O���`0�?�Q�5�?SR`�?�d�b��?��I��?��y.�?�����?	�M�V��?�ȿO��?��]Ú�?e�1j��?��j�G�?���\%�?����ۯ?�5�!��?E^��g�?��.BW�?�C��4��?�I�`a�?dYY�s�?3TS��?Q�C�56�?�uv+L�?�i3п5�?�ϡ�[π?�v����{?�9��mBw?�����Xs?���9xp?�[�K��j?�S��Cf?�h}��b?�����^?� ����Y?D��YPU?HK48e�Q?k���'��"�����?�����?Fl����?�ja�[3ٿ�;E����'�I���￴YW�9�+W��,޿Atnl#b¿��y$k�?���x���?�Lw���?�C�{���?����?�MEJ��?��&P�?и�:��?"�#�N�?WR�[F��?�u��/�?�ہʙo�?�ABc��?�"��Ǻ�?��3.��?)�D���?�`r���?�N� ��?䫂-��?�o�f��?�X:���?ɪh�\��?�Cܼ{��?%��EB��?=�����?��K�*��?ޜ�fl��?�����?���Z���?�� ���?9��/���?3�j����?������?�Z�����?���@���?y�����?�=�J���?=#]o���?Y��9���?DѶ����?SO���h�
e����?�0�o!��?A&��$�G7C���G�scD��q�����ſ�DS
-�?�S�@h�?Q��@�9�?�J��/��?ʵ(l(��?<	��w�?U�q/�M�?D�MO1�?���Л��?�zFn��?k[���?E���Ժ�?�3ٵ	�?^�r���?������?2�~��!�?$;���o�?Z�9G1��?,ˋˮ��?�D ��D�?�qF^��?|m�>r�?g���?�"Z+�`�?C��h�?�?y�!3�?N@��t�?
Aȩ���?|�CJ�:�?ꡐ�B��?��W��t�?G�8B��?���/?p���y?�F��~u?S�%�/�q?��c.H�m?�S�I�h?�XW͓d?#�΀�a?��~�x\?zq���W?�Z�K��S?k����P�E�ܿ]�����? nd^#��?>���{�?)��V_忣X��L��(uI�	����V忥f+_\տ*����ތ�̛s���?�j:�;�?�)ʖ�?|��9�?p�����?6_�.���?o�	����?Xi����?��"UE��?��w���?�{�A�M�?������?F�LB���?�ӕ����?�����?1�έ��?G{�3g��?@��p��?�IO���?���V���?��D]���?�9�����?�(;����?���K���?�3y����?����I��?s}H���?���Ȩ��?��9����?znmA���?�ʰ���?�q���?��U-���?Uf�o���?v�Ib���?��<l���?܌V����?*�(����?�%�{���?�.v��￭�N�f�?JS2���?�[���?���D�<�͞J�j=���G�޿-���ۘ�?�6Ԙ���?U��ޯ�?����L��?z���b��?�a~4N��?b�ނ��?x��h���?��x�?W�F�v�?�]9��?��^���?�Lp1 ��?ɝ s�u�?*b4�(�?A��Q�?,Dd"D�?�̞����?+��Cn�?���c�?#k���v�?P��ʍ1�?�~३�?2��
j�?��*��?2�@���?@��5͙?uU ['v�?�*���ّ?Q��uW��?of��k��?8�*����?`��%��?U_m|?�%�E�w?
�f��s?��g�[p?é`�6k?Pj���f?0�w��b?|���Q_?�.�T�Z?ውZ��U?�/�A� r?�O�cY��Fk <��?Hk��?\�ۗ��?k�ɚ��ԿX����׹�6��￐�R|��*�m࿉)�eE�ſ�+ph�Ӿ?�M6��?4VQ+�3�?0M�;�}�?�"�Uܘ�?]�s��?�Ǆ�a�?|�/J{�?_`"@�?�:$�E��?@1)9�(�?��j�?�DjJ���?w��Nw��?�G�}��?�<fT���?7`�.J��?��S���?$�=���?��r%��?�5�����?�-��=��?�b�+f��?�0Z3��?f�BN���?���#��?Dvg��?��w���?�l����?1�A}���?�����?�������?��7F���?ă�m���?�������?W�*v���?
a+���?�aY���?��*���?�e���+�6L��_��֕���?k��^ʥ�?k��F)q�N V���$|έ���$$�Ŀ�x��{�?�ɂ��%�?�w^�C�?�$K�~��?ʦ��?���x�o�?2_�E�?~P���?�����?"[����?�#e��?dMI[��?O��� �?V�����?��a5��?<�R>�?����g�?��<�u��?���f��?Z7�K�:�?���%٩�?��I�d�?	.�Ms�?�r(*�V�?ן�=�?�]��%�?�~���i�?��g�Wy�?V�6E�2�?'���>�?a�h��i�?z=��}��?+Zs4?h�����y?���|�tu?�����q?�����m?���\�h?#w_�d?���Pa?MG{"k\?T�d1�W?�ek� �?�ӿ�c,뿥do�θۿu��O�?�λ��s�?����?ν�ߘ�����Œ��r�@���&4z�~�俐����Կ�:�k�����%6%%�?7p�_.Y�?�%����?>l�A�?�d��y��?b�b��?)/�Ԯ�?D�k���?Q��˧��?������?�,sD�N�?�f���?v�k��?%�ŝ��?E*_:��?9	����?���z��?�B�}��?>�X���?�qX����?{'ð���?v�����?�~\����?/�����?r�8����?~~wJ��?1��h���?|3����?�[����?�+�i���?���:���?�OS���?�:���?�y���?�j�h���?��p���?�c����?E����?ŁH��?r�ca�w￝'����?\lG����?�8p٩5��bmɀ��� HR�`�����Y2ۿ�|�����?�����?s��s�=�?׀�t��?����?��ŧ�? ��h_��?����f�?|0��c-�?�Iz�43�?#��wO�?��]`J|�?��k���?f��b�+�?,)v���?W��+��?}�����?<�ڗ�?��r���?�.�J<��?t|�+�!�?k���I֯?��ɬv|�?:Y���?E��T�?��Bj�}�?����\�?U�$#��?�P6�:��?���1�?
=��G�?С-�/2�?�}Q@è?����{?t=�T>w?g�ԘFUs?J\��p?#RE#�j?`��8	@f?��Nb?�@y�d�^?�-�gu�Y?�&��	�?�2�2�?ǿWo�����z���V�?�76���?� Ʒ��?b�*� `ٿL����ɱ�˒￉|��0�בr^q޿�f�J�;¿rHB���?_v0���?��b2��?��4�J��?3d3pE��?ruS.��?����I��?��lZ���?��U~O�?>.�����?��p��/�?�����o�?��%��?��.��?��(��?�r|����?A_x���?$ܔ�%��?�J��?�t�<i��?��߿��?7��^��?E��|��?����B��?a����?�O|�*��?_o��l��?/�	���?�׻s���?��S1���?���;���?�N�����?�8�����?�����?��C���?rJ�����?��-L���?�Dp���?E^|2��?�����}������п���{$Y�?���\��?�/S���X������TM.���ڷ�{�ɰ���.�5�?�q0'��?5X�ƶ��?q�I����?�*賋��? 0+�]��?�+��J��?:z���s�?�?^Mv\�?uc�&�?�k;�B�?�+;��?��@�Lt�?$�E���?��x�ѹ�?;�1hq�?o��|���?���;��?���)���?0oo����?�9�%*$�?�� O���?���;��?���Ǽ�?Ͱ2
k�?wwu�=P�?l��)��?x�����?��t�o�?�ކ�&�?\��῅? ��/�?	�F#~?F�\
y?Q;�r��t?;�3�KQq?��&_��l?���1�g?�SFP3�c?3LV�ӓ`?�ye��[?��,욀�?�����W�?igu���ދ*�ɿt�y�?�?@�h�.F�?vRX����D�F�U-��J/^��tp�Ky�'���P�^�J]ѿ_�E9�I�?���쁋�?n���,�?��ClN�?�T�ߎ��?p�b=I5�?opo4F��?=D ;�.�?����
�?�xï��?"6�9��?�''��X�?'��B;��?��tٯ�?X"�|���?y]�֚��?�]Q>n��?�������?.�q�G��?��g�2��?�`(���?{�����?a����?*�����?��ۚ��?Y���?ju�U��?uKv����?~qb.���?�>%e���?�������?ׅ9����?�֜A���? TS���?�{X���?q`����?�o�����?ۂ����?���q(��?rGH��������G�Ij����?�i����?���/��ӿ5��'����I���n9��ҿ�4|X��?�~��$�?�.>)&d�?{�iݠ��?-"[&X�?�~F�5�?����y��?�T����?7�C4�|�?ʄ��2��?��ec��?���.��?1D���?�f��~�?�����?���d��?"���� �?�I��_ۿ?��aƄ�?�vPx��?%��]�?"|RQt��?�oM�k�?�gc~%�?��f�$��?)�xj�C�?�swW�?��5B?�?���TUא?��F�?y��l�M�?�5`��a�?���6�?g��V��z?����Nv?JeZ��r?>`OZ��n?𳁹X�i?Y�$}�Ze?f����a?n�_\��]?�]O迭e�u���?��:�⿉>~_s濻�}h'��?���d�u�?]n�?3����� oS�О����B8��X5#�翾D��Oٿ��N�貿p���@��?�ǝ��?��y�ݴ�?W�wh��?��
�a�?wC��^�?;gI���?�c�E[��?Gl�'�p�?�|�@��?KyF4@�?e>�&{�?7�^>��?�X�R��?�n����?a�g|���?'�}|���?E��e��?�B|����?J����?r��)��?L s���?B�Hf���?A��f��?g�K[���?���;��?�o�<x��?S�O���?_����?�q���?D�����?3��{���?/V&���?r鈳���?������?^����?q������?� _mҿ���s��?R�����V��L���?A��vOc�?V����?u�N����S_�Ga��q��ne��&���??�:q8�?ϋ�y�?���\v�?g���?�*tH��?�oݞ4�?���n��?�� ����?��in���?��$��?�b���?�+����?k�����?��L|�V�?�0���x�?/d���d�?�Ft���?X�k�G�?ܰ�_g��?0eej啳?$STK�K�?����?�[�*��?rk��8â?�����6�?��x����?�z r�?u����? 	�:�?i�5�@ۈ?����ì�?\&�1Z2�?A"A�u�|?����g�w?8OW��s?ڻe<vp?�1A^�bk?�1��f?���3�b?rLA�_?t/�~%��C��N��?�wB۲?L�ג>��;V�F��?����Y��?<�tPu��?���J�Aӿ�&��뿢%����ѣ��`N��F��h�8�j�t]ǿΨf�F��?�Q��^�?z?�;@�?R���]�?+޾��?1!��%��?x\�<&V�?�h?@s�?�Nt͆:�?V��^��? n:j�%�? ?.��h�?�&��]��?XIk2���?(l ����?�B�M��?�7�����?xQ�c��?��(Z���?��	��?�_oc��?�a�q1��?����]��?,⩇-��?�"G���?բ�� ��?~֍�e��?#�"���?�2���?e������?������?�������?W����?!�IH���?2Ѵ����?-M?d���?����?+�B����KҔ����?R��4n翛1X�dhֿ�DY����?�!����?�|�rw�	>��C��)NE=���J�����@Z<��?ʧh��?@�.�[��?�ī�L��?d� 6��?��v	V�?��/����?���Q��?��^_��?‼ҿn�?.~����?�h��A�?�s\)��?�d�#�?��^o���?d�&hħ�?t�*�	�?7���
�?I+>3� �?�7ܗδ?�k��O�?�]lrά?�Y�����?�	z�F�?�����?���#��?՘�9@�?>�Yw�?���U��?����h�?�4�����?��~E�?Q��D+e~?���Hy?�ɗ�Gu?ö6v�}q?����m?/ѳ��3h?��p7!d?4�B�`?�X�F�ѿt�[Ug��jg��,�?�S *{���̕ˆ��ѿۘ�P�?]O��e�?����랿ߨ��Y翪�4�������%��JKk����9c;i�ҿ�\8�ݔ?�V$���?N��ސ��?�`��L�?M�W���?�@Op�?�Τ����?�TZ�c �?�w��� �?&C���?�7:�	�?1�}U�?�����?ġ��=��?�#�`h��?��s���?�I�����?CJ8�>��?�l ��?�Z���?�� ����?��}Գ��?� ���?��f���?;K�����?o�����?�4:�Q��?\��[���?��m����?���A���?l�G���?k��\���?�-����?ړ�����?�,0����?:|+����?|ʨ����?'h�Y�3��|�?�I����BBz8�����,*�?*S�0��?xic�MԿIl�
��Th����ouY1ҿ�ks�9�?Ο@�D?�?��)p�?���v��?o��K�S�?}���?ap���?[�-���?.�ξt�?�IH5��?m,���?>_^��? � qб�?>]�(�v�?��R|�?E�p�p��?�8���?��̿?W�u�x�?��+�?��Y�>T�?�W
��?�Z�a_�?�0ͥM�?@�`���?Ϥ\2s5�?�@d�K�?QQ�R5�?�E�6ϐ?������?B�!UB�?����X�?�Qp�?�����z?�O��Cv?9Ѓ��r?��Tj��n?����i?�z�XPe?���d�a?p$]�P!�?�xe�翦�_��?���O���4�濾���2R�?z��L�X�?�@G*�?Ώ���B��e���.�?Ƭ��Dx�[ �c�nٿҸŖ���A�}��?߄gy��?��7۴��?��zv���?J���g�?~[��-c�?֣�p���?
9W\~��?t�0ozr�?��BJ��?V��-�@�?�Ӝĥ{�?��[��?����?%3M@��?���ٝ��?36����?��X�s��?j,�X���?a�kG	��?�.��?�L����?(0����?
|��g��?Y��l���?�J��<��? &ÿx��?r��m���?m}�C���?�A�6���?������?d�`����?��}+���?9�t����?�+�����?-]����?τ�(-/�?�H��Ul��N�2��~�?D�Z�&��%����?�`����?Abï�?������뿎CΕ����&�[|ݿ�G�t��?$�t8��? �t��?�^����?:���g��?]����?4Ԗ���?��h����?�Guڍ]�?aO`X�^�?��{i�e�?��
uk��?�����?��q?[�?���hF��?]˽<�,�?�	�M�$�?q.���?2
��?�1~3�?�?�_��pX�?p�x�?u�ô�Ǫ?,�^MG�?��MC��?�ڽԞ?��3��?�!4��T�?P�B��?r��I��?)����?����k�?b�VJ��?�����A|?pZ!���w?�76�e�s?��g{Bp?�6�hk?C `�yf?3��u��b?X��w��?��#P���,�}e��?��)�rկ�����C�X�F/L�?�p֨���?69���?"�SJ��ֿ�6���f�eY􎏺�Չ���ck:�1b߿z�!�Ŀ������?�A���B�?�Mϳ�]�?0��"T��?/���֮�?��t���?��./�l�?4�h����?FU��~E�?�Uy ��?8Ek2+�?�K%�l�?��+��?�4T��?7�x���?pC�7&��?�8x���?�����?��*���?�=��?�1�ġ��?d��;I��?��6n��?k��8��?�U�'���?���-&��?���Mi��?P����?�b3߷��?�u���?�=*z���?�����?��y���?�-�����?\]���?(XK����?�<]��6�?6�	鮙��m3ʐ�?�L�<��뿇Pm^E�¿Xg� ��?"��J(O�?��U={b�ȵ��-����N^���ݛ���ݜ�]�����?ּ��� �?mdo����?l�}�7��?�։zN|�?���d\��?-:�M^��? ���}?�?�ܽY~,�?��1��?�������?�#0dx��?Q�Bf�>�?�x&t{�?��=#�m�?����1�?�����?�:g�e�?J+�n�w�?���\�?7e���?+�U e0�?TVnEs�?@0Y�ׁ�?=xD�:�?U�wD���?���+>t�?�k:ZL��?wsU��?���E�׉?Ùn�~�?�=a$�?[�GU;�}?�dg`B�x?�7ɓt?2c�q?��Ŭ�xl?fmb���g?��\��c??�d9�?d,'�3㿼:�N_��?�Ym\l�?���P����M�����6.�,�?�
���?�������S��z鿗�j���￺�M��v�;�⿩	͋�пK.M-|s�?��E��t�??I����?Z/�i��?P��6l��?�akV�V�?�����?Ηb�(?�?Ow+,�?�^#*��? 8~gQ�?zbw��\�?�Ȏ\��?1ўδ��?W_����?��_�~��?�����?����
��?��w���?G��.g��?aQS��?h�Ԇ���?��''��?'=���?Kq�$���?U�ʥ��?t�"Y��? K�z���?f�f���?Cdc����?�Pc����?4N)����?�)�����?��ZU���?r�<���?�������?�װ���?v�i}:o￿�H�ٔ�?d��O��ݿI�j���x���d��?�������?�z���޿a��xX��|�F͓?�}b���ǿ��o�_V�?3C���?�C���?Q�x���?���	�?�9����?�moe�?QS�A�?[o�2���?]@a��?�RV0�?��ߝO��?B]��7!�?�$���?G�.bЮ�?��6�>�?*�g���?��Dܾ?�vb���?y���`�?s�^D�ɱ?�WHҘ�?�T�l5��?��jg{�?T��ա	�?�tͫX�?�D�����?�tF�U��?����O�?�X٪"�?���	��?_Oe2�ł?[���:?�����y?��o!,�u?lT���q?��J�m?)���h?�PL?ʮd?Z7w����N��(��?+zkshؿw@X.Z�?	wo����}��߿$	7�,�?��R��?ƫ��(�?YWm���X6h��q�^ޢz����O��b�/��~+�տV�.�v���(e+%�?���C��?_J��wx�?NQ���#�?4�����?��7nv��?.0A���?��ʅ��?�P�}��?�?��I��?'�&}L�?���wY��?������?pqudB��?U'op���?�\f_c��?�#��3��?�|�%M��?I:�����?�:jEq��?�=�v��?��6t���?�Y.���?B��b��?�
�����?)���G��?'�£���?��N���?�-�
���?)	�����?������?ID�����?t�����?(@�V���?���P���?��n�� ���l�r�����4��?���*ڷ?�Ae��쿃�s<��?S�Ӎ���?�
��	k̿��$�L�"zk�������տ�/LPz��?lt�>�R�?�`�^��?�`F���?�w�E�w�?WE�D�?>A=�c8�?�������?δ����?��T!��?V�x�od�?���b��?9�o��?3 J�/��?wK����?F����J�?�`1�%h�?U�n@)�?�=>��?�Q��d�?c�� ��?|��0�?S#Y�˩?[�?i�t�?)�
&?١?��؊��?N������?�S��]��?��(��?���pm�?����+��?Eˈ�ת�?�3���[�?Wd��6{?����v?���4��r?(��_�Qo?\�,�j?䬧�e?ڬ�ح���f��D�?�,�
�D쿃R�P]��?��Kc�ܿ��<'�A6��o>�?aVg(�3�?�~J����?����8�߿ε(���٣��i￫g���Ųߵۿ��L����*��%A�?�%�>&��?�$JX�?����R�?����1�?Ré�<�?Q����?4Ǭ����?v~He�?�	"��?��I�:�?jtP�:w�?��K��?e4�+q��?�:�V���?�������?H�(�E��?��P���?~�����?����?h��Q��?������?Qޝ��?ht��Y��?jj�����?ڥ�5��?J��8t��?{'�K���?������?km����?�r����?% �����?of����?��e���?2�����?}$�<��]ގ���?]��/�ɿ��.���?,�Q��
��{��?X��/%�?��Ϯ�`�?϶کp+뿵�܋nF�Í���޿ߪd�� �?{q��ʕ�?d�^�6��?�c�e��?�͡C|��?�D���?�b����?[�e#��?��Ps{�?��W�y�?�&b蛕�?��m���?�� ��?ȃ%/ y�?B�^.�?+d<��V�?�'4H�?A�;��?_��c��?[�Q1fh�?��H�hz�?*Iy �4�?�������?�wXMxn�?N�=�٨�?�����
�?�B��Nҙ?l[ez�?�o�xݑ?G���5��?�}ZM��?t�����?��g�+�?BO��;s|?F�,��w?R�߳ɮs?y_p?��7�;k?�����f?r���῵*[z���?�^�;�U�=v�pn�?h�\zt�?�eE����ָ�YG,�?�/�!��?���\���?�Hߺy�Կ?-!��B�Er�����"�꿗2�}�࿺>���&ƿ�8���?X�+����?�H�.�?l����y�?���S��?�D�=u��?�1�9`�?,���Nz�?B��r?�?�g����?�dxmF(�?6$�B�j�?�������?r`�[��?���ui��?#Oʮ��?�)��@��?�$����?4p����?�W"��?�5�ю��?�<��?h�$e��?Z�2��?s�>����?��,#��?�?�9g��?Tr<N���?�o����?��Hi���?�.H ���?�^b����?_e�?���?�*'i���?�Yq����?y��L�k���?W��}��H����N�?ER#6쿢g�)����.y��?a��>��?�V����{(]����Z6珬���YH����,�p�>�?#�a��?(2����?�-B����?���]v�?�D��H��?��ˀ�|�?��&�7�?�Z��$�?8�$�y��?ӭ4,���?%���b��?,/�;+6�?��V'
m�?����a�?����'�?��_��?����W�?��*])l�?�ѽ��R�?w�����? Bf��"�?� 
��g�?%��px�?'Ps/2�?�q]���?�.U�ji�?�M6K��?��1��?'��unˉ?k�U2�t�?`^4z�؁?*&	�}?bQ��T�x?;�z$݉t?Z$�iNq?\�B:kl?!�]�/�g?�`
��%�?��ÖL�?�K�����E�����?�.55�?������8K��з��p4� N�?���T��?��;�J����^1�<鿏1D%���i2��W���^7����Ȩ��B�Ͽ�os\u�?�J�A���?I}t���?�5���?��&G���?�`n%�[�?��M��?�����A�?���-��?��dV��?YFk`3�?i�UbQ]�?�-cV��?4& ��?Ũ���?�c|آ��?mk�$��?X�K��?�F���?��vo��?z ���?ü�}���?�)��?ש̦	��?��t���?�rP���?�� �Y��?H�B���?:fa���?oR�����?��=����?ma�����?"͗����?��a���?U`E���?����������|��?P;r����/���?_/c��zC�v|�����)�?���P�!�?"Wd���� �T=��k�Q�i��(�8�ÿ��Z9��?q&q/�H�?rഈuQ�?��]���?UCH)<��?�ɜ� d�?*mR8�?Q�P���?3D�W���?n�e����?��
�7��?E\�9���?Dyĩ��?w����?*'A��l�?bگ�C�?��9��Y�?���,��?&�+�o�?K��+�?�������?c߁��N�?����sa�?�*c�H�?����ޠ?!�����?���oX�?d��k�?��&�?��:�ފ?x�GcY�?�ވߖ�?�d
��~?v�^��y?��
��du?�Ṇ�q?���2@�m? B>�Q�h?�����?�:�x�]׿��y�l�?6y4�ӅϿ��&�If�?���ʤ����Xڿ�j^�?�Al��-�?��j[-<�?*Lr���t1�@��￵��fx�����
��@��yԿ��
q{�P-h��`�?�CB��?�V㲲�?w�2xN�?�&#��?b����?�7����?��zd���?SyZ����?��}�T�?V�wM�O�?����ƅ�?�N7d`��?�s�yl��?���u��?�@)9���?J�Ì���?ixԏ���?o�I����?�ʄ���?8�7���?�!"���?��=����?&����?�����?�{_�K��?\�����?DKy����?��;���?�S����?�	d���?�^5���? �N���?!�����?�%���f�?i����?�e�J�c&X��?��b�&��Ɵ�E��۠���K�?8���q��?� ����Կ��8Q���.p�u��6���<ҿ�$��X�?p��H�?�LHT�t�?���
��?k�MLR�?hX��?&@¤���?1���e��?��a�q�?���Ib��?� nVo��?��l}�?�t�t��?���t�?ܮM/Aw�?̾��q��?�]\K�?���S�ƿ?O	H�bs�?��OrK�?�=?�Q�?./P^z�?���Z�?Z����?�/����?��kM0�?4�-sG�?�_�s�1�?���7@̐?)�WB��?�TǊ;>�?^T�{8U�?}Cp��?N7���z?����@v?t�� ��r?'�� a�n?�$&[s�i?���&���?΁,�}���J\ڴ���? p�(]}翐!�Y��?�1���;�C��So��UN?�\q�?+��N�?%�� ���?J�a�ῑ$�������! -��dE����1���ٿ�ƗW�ӱ�~�M8�?I�u�?��*���?_�-�֡�?��o*j�?(_��d�?������?��5�E��?�h�ds�?�謪��?$��B/A�?<��I�{�?���{��?Qk���?ԉ�'��?(e����?�M7��?5�wy��?T������?:r����?D{jM0��?�٫��?�?q���?�h��?Co&����?T���<��?� n�x��?�Vǎ���?}5�Z���?Q�F���?�Y����?�����?{ݷ0���?Q�����?0�尡��?`����ܿ���ſ�a۬���?���"X�?3���R�C\N��?���#@�?�-�T���}�A/���#�[����`T�ٿ������?9
ս�?p[�O6l�?e�����?��"-H��?�N�;���?�$ڔ�?\����K�?���k��?
0n��?����}��?�qCY�?�l�i�?$1Y� �??��O6��?V�o9X��?�������?�`���~�?�->v�v�?(��Ax۶?|+�>
�?U8Ut��?ys,XT�??6��"�?��ev@8�?ARxÝO�?ۥOu6�?��q���?��� �q�?��T���?a.��#�?��5���?�7����?r�V^|�{?��w?K�>�7s?%a���o?�L���j?��Y�f�ҿpH�1Ĕ��O����?�X�f��Yyc����?t�Ϝ�AϿ��p�*R���lI��?�Ȧ����?�r�>��?I�֥K�ڿ8�9��?���P\�z￣f��.�迌� }qgݿ��p����.;�e��?8�O^bv�?�m!���?9_[�S��?��v���?M�%[�
�?������?��ڋ��?��+T�?�L6��?Z咂I2�?aA�4q�?�
��R��?�$B����?��H����?����G��?_#�\��?�͐�U��?HaC3)��?2V-���?弝����?�_�
i��?���8���?��i$H��?�����?{p�w-��?Y}�Xn��?�5P;���?cXI���?D������?�Rޡ���?��H����?ny���?�m����?�E;�V�?k�ӗ��ޖ4��?R��-ٿ�o[82��?���B��ﵘ�j��?���b��?�흉E��?�|�t�鿳��{���Y21`���|�d�F�?C��MԿ�?��#�:�?��Uc�?�U�����?!>�f�?���n�5�?N2�1���?��RA��?��x#���?֫=�O��?���o3�?R
���#�?�t)�ϯ�?�V3���?|�4���?��.�ވ�?�6}Q�?/St�-z�?6����?��u
��?�Q���h�?�0��M�?$�f����?� ����?����n�?ptv%�?�w_����?�e���?6�:
��?I����?$*D��ф?ҳppAQ�?�P����|?�D7J*�w?Z��r/�s?\q�mѓp?Ԗֶ�k? %XѪ� ̮�:ѿUL��2��?v��^k��3n>¢x�?[��� O�?�y+�+��GTG"�?Sh+���?�Qax)��?�y\ѿ� ��I��f����x�V���VgS�࿫�<���ȿxYL��?������?�mkO���?�_�/�9�?�8��g�?<:����?e���2I�?�Z".j�?5O�24�?��U���?�� Q�"�?��H~�f�?"�*��?�)�R���?��V(��?xU�|���?�����?�~�'��?N�"�W��?��[���?K�n�k��?�=�#��?$+ BT��?!SC�&��?+,����?�;]���?�Wn[c��?������?Q����?}�W!���?��f���? �k,���?A�����?�����?�ɦ }<忔�g, �=�m���?\�Ɯ���6�P+��?��~�I��K���ƿ_x��X��?�����?6/�~��忀Se���￡v�٭'�`�E����� -xL��?�N(&���?��C����?�K��9��?���(��?�G~)���?(�|ד�?1<�v�M�?m��[U9�?*C	���?UW��p�?�.�[��?��
M�?��%���?.�ZB��? ��\�B�?<U�u���?�t��g}�?Gq�����?�-0�l�?���V���?�s�q#G�?���2��?��䖑�?�#ҘG�?�ehu�?<x	`��?`�|�a��?�M�+�?n�[��?�F�C��?�+��?�	W�@�}?�Xi=�x?���g�t?� �a+q?aݦ�؏l?HN1X��a�O���?x:Ȉa�?������o}9�B�?�zP����?[�l�~ￕp��s����V���?�nj��@�?������ZM����迱�����!�O��!��I,��"���cп1Cuj� �?H��pr6�?�������?$�=~�?�{�����?N+'��M�?/�׉�?�[S��:�?
��?&k]��?\�>���?�i^H�[�?�2�2��?�W6��?�3w��?m��B��?�e^���?�������?�� ��?��FY��?� ���?�������?�Ì"��?y�>���?�e"���?IS��?���W��?�����?�'����?�L�[���?yG�����?	�X^���?_/U����?"��@���?=����B?&��ƿ΂t��9�?h1��Pv��o7�?؞�ڬ�O�
b82߿$�#G]�?�_�����?��R�.�A0���<�2RG?������¿��ۅ	@�?�B�u_�?j�DV�Z�?H�6���?�B���?\gwX\�?ac�`/�?�M�R��?���@���?�����?5'����?�ii���?3������?/�v���?S?�@`�?Z
ۿ��??V�C�P�?�FCӂ��?kh���c�?9�a�� �?l�l�{��?�%�@�?����U�?�S��>>�?����֠?�qDs�?�E=�.M�?/rD�a�? ��R�?ĕ'��ъ?���p�N�?��s�荂?!����~?=MvP�y?R���Zu?�74��q?�H6��m?RZP��?z=�G�{�?7���տ^<+y]ޏ���c8r&̿�$�N=��?B��������WoٿQL����?/nb ���?� Rv��?A��2}�忻U|���￥kGGzg��2�r�K��w�!BԿ�ȡ�^�m�^��Ǉ�?^춡{��?h����?��w�V�?T�<���?5ø����?���	�?q����?�	/���?bez�H�?����0P�?/M�<��?��Ǳ��?�{פ��?�ל��?�^<��?O�>���?�����?�����?@8���?��Ӏ���?-#���?в]����?zZfO���?�o���?��D.L��?�iL����?����?J2�t���?�F*����?e�����?:�oH���?�/�[���?��@���ٿX~� Mj�?�򪘒�?N~� >�:�٧w�?�|��J�̿��4���䊇����?odv.]�?���K+�׿��o[�a՜=������?Lп��$��?����9��?d�\!Χ�?y����?�F�>�?_�sJ��?<�"	��?�j���y�?��[8�N�?Ã���j�?��k�:��?�3�z�M�?�ø���?9:��Q�?���m�=�?�e>�i��?k�֑$��?DM{Q~��?�1.�;�?Y �3�Ե?�O�@*�?��b��9�?:���2%�?�E�g��?C)�.cf�?;s��o�?�{6��?�� �?�-\���?E��q��?\i����?��X�;,�?:� ��?(atpc�z?`a���v?J&��Zr? ����n? *�ÑE�?'�1��o�?� l�_�p�'=���?�LA��俖k�l1�?B,Z�wC�Q9�v��.���?������?� �
��?�@�Yb��Q������d��n�m�`�濖�ۚ�ؿ�U�6,����_!���?�A�b��?�|
���?��<`��?�m���?��W �w�?����D��?5mD���?�X1@�y�?����.��?�|k�QD�?�+� ~�?vu����?Ք�����?�A�����?�Z��(��?8W��Y��?�Ѧd���?���S��?��)��?C��D��?M ���?�$�*���?U���n��?y[�w���?{@�?��?o=�){��?%�Y���?��k���?��d���?$O�����?ERS����?�Ao���?feB�I��?B�e����?|`���¿�3�}�ڿ� �?Gp�?�goG�
�?b�,P{��-��-K]�?����?�A�u�ǿ�	�=�����	7Է,�帠p��ֿ��?�S�?� {���?U��D���?������?oU�a��?yC!S}\�?��>�T�?���c?
�?������??�l{Y��?^��'��?VR	���?:����!�?�R�����?�.�B�?[���o�?S_6w3��?���,C�?@��U�?)n����?�|`����?��O!3�?��z����?�Y����?Cz����?>��Zj�?��D��ژ?e�&�~��?4>�v22�?�\AH��?�IMˇ?��2�ʃ?��c3v�?*�-Wvb{?����v?�����r?/�y=�o?��]0���?��;h�D�?��)��￴��m�?Ĳ.T<���<�����?y0�9��ؿ���4�+�Fj��?�l��#s�?
9&Ct��?�e�X޿������)����4￨ޞQ.迍HB��ۿ@�ܜj���k��&'�?U�-}�r�?�iq�U/�?Z�j5�?Gm5�O�?��Y�-�?�,��2��?@�.��?�Λ�"`�?�������?�8�?	�@k�u�?[`V��?���W���?E�����?��A4��?�()r���?�Vѯ���?���uw��?�-�S���?N��5���?�)�����?˘
(���?/ڌT��?� F���?H=�g3��?<;qtr��?�3���?6Ox@���?[Y0!���?C`ג���?�+�����?�p�z���?8bA(G��?�Ә���?���i$�翪�9�P��?�>T3����5^�L�?�c�����l
	YJ�?n��J8��?���
��s?���G�뿣�P"����&�)�_ݿ�~�l��?Av����?7����?vy ����?%�����?O� :���?����+��?��]a,��?JA�&[�?`�о�\�?�a�eb�?���I��?�\���?��k�X�?C���@��?���')�?\�%"�?��G���?��0��?�Bx�V<�?
n�϶U�?%��3�?���P"Ī?ޟc(D�?��tH���?7��zcО?qMĔ��?�7�r�Q�?�ƒ���?U����?o�g���?�#.Z�h�?�N<���?�j�)�=|?)q��G}w?Χ�.��s?'}�/@p?x_���0��9�`W��,��5I`�ҁ����?�$R#�￡�����?4�-�.u��k�/�c6��,�˨��?�1�|���?J�}���?v�}�ֿ��bn��d'ȸ��;�$��6�T��Q߿6$=�Ŀ�]h��?+d�{�L�?y�R��a�?P}���?U(pҰ�?�%�s��?qNm�?������?e��E�?�N��V��?�g�?n+�?Kw��l�?�7���?�Ο!h��?~���#��?���/��?�����?��Xa���?��U���?D�`�?��?l��H���?c( HJ��?�}��n��?� k9��?(�����?ZZk&��?�v\xi��?���ۗ��?\�����?�p�'���?������?ϋs$���?=1�~���?�}8�>��?��T�w�2f�=��￶Ѱ�M��?�ӭ�N%���b�?кv��� V���?Ƹ���?M������?%�d�(��ג76�'�?L��f��G�'wܤ?* �R�?������?d&��E�?�(/XE��?Q�m�5�?���ada�?���I �?�P
��?D��f���?�R�3�?TڨSp�?��>�W�?���r���?T~����?�c]�8��?9�d���?����E�?�#�¼?�]X��?���h�?}���Ғ�?y]�����?�$����?���*D�?�/�Z��?PJ|�_h�?_���9��?�Z�\NE�?���k�d�?P�G�?:b5�?h���}�?�N��}?)���3x?&��t3!t?��cO@�p?��Q�|'�@�W����ϼ�*!Q���u腐'�?!�������?��ݩ���?��7���je+�袰?��\#d�?�?v�"�?1��s8Ϳ�;rG���;��2��+��뿉�P_c�%) �� ˿����'�?��'�$�?�
6����?���H��?t���B�?�1��-��?V9��y6�?1�ߙ]�?��+�?�d�ژ��?�Բ�i�?��ӯ�c�?f�5cē�?7;���?�#�#��?�R���?�ڽ)��?��wy���?v����?_w�����?���N��?�/����?*NU�F��?��s��?(j'���?51x��?U�5`��?ކ�s���?�K˄���?!?y���?���d���?Ir�����?�\�z���?�ˌHXgۿx��x��翠���n鿩����?��뙷����v]W�?*��Q���L�VY�O˿�3����?1C��<�?�D#"�{�h6�L��=ք�߁�)ѩ��V;
��?>�כ���?�������?V��Ln��?���}��?B[��8��?����?HH�^�?�:B
I�?�Զ��?��d�$�?�
9�	��?�1���^�?t�V�)��?�&��?*���W�?�>�;��?�4�\��?�'��£�?�G�s��?S�-n�?W�D c�?���:b��?�8�ᤣ?�P/R(W�?��s)/�?�s����?�+k��Β?����I�?�A U�?�J���?dd��E�?�1����}?!�����x?$6z�øt?��Q<q?��P���M��s�k��@0�k�?������?�r`��D�"i���?G6�� ��?<G_�YC���7{��Ŀ�)pz��?��}A��?\²v<,��RᲚ8����9���A n?I쿈x�$㿦>�f�п�N�b+�?��FI*��?JSla�t�?����h�?�Ѐ���?s�.��B�?�D���?����_5�?��]W�?����O��?71���?���iZ�?o�mR��?xo�ߚ��?�to��?�5`����?z �m���?�	k����?�a�Kf��?��Z.H��?�������?�o|����?k�9���?P_� ��??ZL:���?��L?��?���V��?JPڊ��?̉%����?�������?pk5���?�ߵ)���?���n���?����￲+�bf���xq�̿��IE���?�&݈��S1�w;e�?;E��EA��%,%޿�8�9��?�WX�7q�?Д��x��1�r���Ut.�=R��¿.�o���?ʉ�'v�?��TW�c�?�Պ���?P����?"�r�T�?5\�־&�?h�w����?�|�:(��?5�gt���?�����?���9���?��:G���?�T���?e(�ǷS�?��Z�@��?�q�3H�?:rЪ�q�?�97fW�?wM�˵�?��c��?�/Mh2�? ޶'�I�?���`}4�?�y�I�Π?��E���?�5h��A�?DY�hX�?]���O�?���v�Ċ?��C�?���W���?f�B#��~?Dc���y?K^+�SPu?����a�q?�9;a����x$�?#���).�?�}f��ҿ�_/����j,j�ȿ��R~��?x�]Z:쿵N�}��ؿ�Rx���?ws�1��?d��.��?��8m�)濓,����v����V��Yy�怡�[�q,�
Կ��Y�E�����ͮ�?j	�A��?�F"���?E����]�?T�O5~��?Η;���?i鿠��?tD����?�ȱ{��?���;�?���{�P�?�Xl���?TC���?�{G����?������?�<�%(��?R*q޻��?H��b���?=������?V��c���?�/�ŕ��?`�I���?����?�W����?������?�c��L��?�+'���?�M�A���?�	����?%m�����?<Ճ����?��n[���?�Hݗ�g#�P� �HY�&��?��P���?����Z���GSI��?g�ؘ��ӿ̼kRd.濡��� �?�<�[/5�?���
ڿ���C) ˍ^鿒��q/�Ϳ����Q�?���?7�Gs���?�5�`���?G	-�?��(A��?n����?y���X�?�ŮV�/�?���@LO�?Y'�G9��?�-��$�?��pt c�?�pڛH4�?\XG"�?������?=F��G��?��	�LI�?D��
�?�v��Q��?�b�l��?��e���?-�NP���? �x�Ĥ?q��VF�?<p�	���?��gmN�?�Im���?��幉�?��S���?����-�?'���?�3q�ө?�o�T'Vz?#�c��u?�[�r8r?�! �E~�?��0����?Ȅ�D+��?�x%�Dz迠�	B��?q <�������$n�?j�f�翽����⿿��
�?_��;�?��\:l�?�Ӷ[���s#Q��"�3�}�8��!濣�'��3׿�T��1���H�S���?Gօ���?� v�h%�?i�`���?��&!��?{d�J��?<�����?�kQ(���?��!��?��:���?B�gG�?��Ep��?���I��?mw�����?�+
	���?.R>���?}Y�+���?�8���?8h�A��?���bB��?�ϮV��?������?�(�����?�Ǌ�t��?��z���?�a[�B��?6}��?g�;m���?�
�V���?������?�R���?e0@���?��G���?��6�O�?#��L�?L
�ſ?<8��㿆\f詈�?dO��?M��)��E�:{�?z���[+�?!� ^}п/GGE`��9v�;�Y�ɱ�`Կ|�&y#d�?=	.Υ��?�`$�a,�?�%��S��?z��V�j�?v-m?-�?�Շ��?�V�����?�EH���?�������?!r߄;�?9�b5)��?�p�����?��v�֡�?YmR��?�n`'�?�9�GJ�?�|��Q�?�8����?E�1��A�?��W+'��?� �)Ѯ?���$��?ޖ9�S�?���r���?A{�����?���g���?�d��k�?���$��?���ZA�?1�27���?��^W��?�7sB�?�z�_{?3��Ctv?���B��r?��N����?T3 ��j�?e��F��?1��ĩ�ￌ�Pe�?�?w������9ՠ����?3U��)࿐��n0���j�?ћ��k��?�G�x���?l&^I��)>�ڣU�;I�����\�v`��翥I��Lڿ�͛�]}��;M�_�O�?Ԇb��H�?!� Z �?l�|��n�?Oh>�E�?%BbK�?�mV�׷�?��垷�?�[4j�?8d�����?cs�<�?��|�x�?�b�+p��?iO�;��?����,��?~a{����?�������?���%��?D�E���?ev�����?�T���?7����?r��<���?n���^��?��~���?Opf8��?�s��u��?I{�v���?*�����?��F���?Yy]���?�?/���?�li��?�R�c�P�?E����?O^k[�ۿl����Jǿ����#�?�u�I��?(J+����M�kn$�?�X�/�?�r�3����U�TL��:ȏ�1����1��ٿ�	��O�?\M�֊$�?�O[�q�?�m�&��?Bk̮��?{�{n��?_��ő�?+��)�H�?A�����?���F�?E����?EiQ�U�?���f�?��Y'1�?Mx�E|�?�-��3��?�/6�3��?-�̼�{�?�{��r�?�e!�s׶?ݯ����?�����?tg�O�?��%G�?=�+�
5�?\�AJFJ�?[��2�?��*��? ~���n�?:cq���?[����?����?�w�(���?2�Ė�{?Ֆdw?�q��4s?������?��m��?R=�ID�ѿ{�k����<w�?Ϥ��y��D�H��?�ua=п�N���:�єm�@�?�X.OV��?���Q��?��	ۿ0N��G����բ w￵_t�r���b�e�Rݿ�mZU���ՙ�y���?*�A^���?���Y���?{�����?*].*}��?�9�x�?����݋�?~�{�ژ�?Y?F&�T�?03&���?����2�?[�H�q�?]'&�u��?�M��Ȼ�?m��1���?�1�~S��?N��c��?�#�[��?T��-��?2h�т��?:������?" �Nj��?z�����?wqn�H��?������?�j��-��??��n��?���^���?aP�a���?o[�����?�蠭���?��k����? ����?�}l>��?�6
���?�U�_� �פ���? �=�Uy˿�V���?C?Jz"����20���?ư`5C$�?אO��ڬ?:Q8��뿐���HO�r=N�~߿�忋`i�?�J�M��??50���?�����?@��ː��?�5g ���?{��K�?M��S���?��j�~�?�\��|�?��8��?kg+�:��?Z29i	��?%��U|�?�\\�3�?M2��>[�?JqL�?��B����?�r%�?�=��l�?UR7~�?�
��7�?���lB��?IՅX�r�?.������?
�
�?��6l]י?Y�,ՙ~�?zɹ���?q����?���$��?p�����?O�,C��?HB�g�x|?/�&}��w?<�����s?�!h}�W忕S���ѿ��q�d����N��v�$���?�sA�,�7����?h�޽�ٕ?��c�����Tx�r�?N�A����?A�x���?Wi�$x�Կ�Q
��뿐LZ�����+q��7Z�@"࿞�`n�Qƿ��
��B�?C��϶�?��>�T)�?�`�W�u�?^=߽C��?�!�z��?�)>�^�?����Ty�?���>�?��XR��?�$C�'�?��f�Rj�?]DZ��?<��?��?�SV��?�O�Y���?zf�7��?0E*���?x'!���?�u B��?A̯���?�d�:��?�Yd��?�8�1��?�*S���?]�L�"��?D���f��?{��$���?
��ö��?�VuU���?x�����?N:����?��uc�MĿ���@)#�?O�|;P2��f-`
���ڤ�_�?�Z�i�r�`�E�?�`$8����Y|~�?���F���?�:�K�?�r�t.��9M�.@�$mk�⿐/�4�?���g��?��&�1��?w{<�?s[��?P�v�?�?���un�?�72v.�?t�S��? �e/���?�e�I�?l��Ђ�?�a<�g�? _��C��?��q��?���O%��?������?��S�?~�=�ؼ?p��u�?>t����?�Z�ڒ��?�m�̨�? ���o�?g�B��#�?�	���ן?�d�m�|�?�%�?9ƹ:aS�?�&/^|�?V���v[�?�&Kh�?:�Q��?Y2�/}?<�i�$Fx?d��I�0t?߬`�H��6>/Uѽ����L�￙?h՟?���Ǭ��?)䏘�%�*~�>��?f[�"��?�o�����$�J�?R�.�C�?rE�n�?��Y}�˿��Q�s�ke���￲��3�x4�̬��ח"�\�˿>-�dr�?ȁ����?�b�Hz�?p1���?�v��#7�?��(���?*���0�?3K��Y�?�y�<?(�?f�U���?�*u4�?.��K�b�?��ƿ��?�����?�
k���?�G?���?O�o��?zs$����?ݧ��	��?cw�-���?q�F��?h�i�	��?�H#PB��?~�����?�	I$���?�����?���>_��?���Ȑ��?˫����?f������?��I,���?�Z�����?�L�$T��+�:�ň׿E�m�1��U���J��c���e�?o��H$�w���(�?�a�+���}%�R	ɿ��J��?�� tX�?� 8��忷݄���� �^�BW俀�-������ڀr5�?�h� ���?��dO:��?���Db��?��I>��?S2�	1��?���؜�?�*�=V�?�Ќ�UA�?�������?C��L��?�t���?_^�M�U�?�K@%���?<�8��?�D��zM�?QS����?J"!�&��?nK�ꗸ?���4w�?şs7�?���SU�?Y��d��?���i��?<B^HO�?��J�"�?��2����?����Œ?�m�)�:�?�������?��@n��?u>�Q���?�#��=�}?ß*���x?X�Ůt?�U�\�ٿZ�Z������v���濉rO~�=�?��Q��?fb��G����#�?w�>ȻS�?e��)�aￌFk$��¿��>\���?Kѣv}�?��|�b����`���!�����c� 6쿘Ѓ���FE*��п���y�?@S�8��?쫯!'��?�b{sHs�?�>&�$��?��!�5H�?s͌��?�aL8�?����0�?��U����?,�����?퓆�[�?�ȧ���?4W >��?E�R@��?�~�/��?K�����?^�M����?·}nr��?x-�P��?i�@����?�m�����?�SD���?�� ���?ɳ����?��+��?�MOW��?�-K���?[�:B���?��#���?��Z���?��C���?Q����褴���V��z���S~F.Cؿ0KJHe��?D�+��Wn6����?���G-忓pJ�qڿ�O�i,�?����o:�?���Ot�,�������G����x�/c������N��?�Te���?;�#��?(['���?���X��?�.�rm9�?LT�<��?�]6����?EA����?��-mѡ�?������?q�w�g�?��_ou��?�U��Y�?|(�?dx����?KFb��)�?�C��j?�?Pw�V-�?�_8y��?U?�n�?S����?��V'�!�?�2����?;��l���?r9�YfǛ?�v:�?
�l�38�?�!��	��?�5���?�|z��?J�E f�?�O��t�~?Z	4�Duy?)�ŋ�,u?�as�|��?��2���ֿM��ʣ�����>���?�`S'�|Ŀ}��niĿ�C�����ዋ��?��T�$��M��Pտ+Iak��?�Bc��$�?4��h86d?U��*~��G��}��ￍ�hq����?iD��D�Kӿ'���z��?��c6 5�?I5�(�?m�����?�A�My�?Mc��?�)�u��?H5W?�?�?h���?N�V�,��?�Խ�~�?�g��S�?���B��?ry�/��?P�_����?�>+I��?y�����?&/�����?��Ο���?��v���?磑���?�m���?R&�0���?�P2���?�P�����?CYk ��?�7&.O��?������?�2>^���?]�r���?R�~���?e������?A��t �?�0��[�쿐��4~��"���?��"#׭�?�~�*��u�U�?i�)�y�ۿ����}~���N��?�����`�?n2OB�ݿ�O!k���RΝ�|��v�C�ȿ㙢���?W*�Ś��?��n��?�]����?V��yA�?5*����?Eor�?.�'�?@�-��?S�"�;&�?a0"��B�?��V1��?jNظ�.�?�y�$�?�L����?�A\��N�?fߍPY��?�=o���?xe��¹?Vx
p�?��+xֱ?��*�X��?OM6��?����N��?T&5�?�w;�l�?�Ĥ�?�SX���?�H��[�?JC�,l6�?Y�Lox��?Q�*,�ӂ?���_�Q?��P��z?B�%�u?D��d���?&
XŸ��?��k���?�J���q�?÷N��we�+�?{�[���ڿZOi��?s��Ps`�k����-�e��?��?v�nW�?^{@�0��?�S���������bￃN��:���v�щ�Ax��տ�3o�b��s�ԗ=��?�F�E@��?�Uŀg�?e��I��?߽*�P��?9��D��?� �¹��?i���{��?�6� `��?]1�L���?[ʱK�?UF+���?�E^4��?� �b���?�3k��?�i�9��?�G���?�e�-9��?���w��?�!ҵg��?����o��?�������?�������?��1}��?h��d���?�O�F��?y����?��b���?�j�����?�&����?�M2����?�=�:�?��FYѿ�	�i�ѿ��'*��?� ^���?\�~O���;_���?�`��^�ſ$])�`���鈘�?QA_.�?�2\�ֿ���Kc7�nh�,VB�b��-�1ѿx��?#,����?-��`ԍ�?_b�R���?��6L�H�?Pڃ�)��?R-��f��?��J���?�����`�?)y?��z�?%F��y��?*#x^=f�?��ֻ��?)A�+Yc�?���?[�?4J�����?�n'�� �?E���ť�?�_�_X�?Z<ց��?&��(>�?V8��Z�?����@�?��(���?��{Xgy�?�9o_�?~D�$N.�?[�[��?q�:ں�?i%���ԋ?��'L(&�?L��2A�?�@����?'SLwd�z?(o��(v??�:p��?�9	<���?��=D��?��&�=&�?.�\z�쿽!�Q�?��4�!�_������?#�̔qI俜�bR����%�?85��q�?D}-�O'�?̤�j�I�������E�~����W1n
����?b�ؿF�b"�!��N��]��?���W9I�?d���T��?K³�5��?�vHLw�?��n�?-?qv��?(����?G˛�3v�?�
�����?˶R>�B�?p5���|�?�?�8��?G�&:)��?�G���?���>���?�,��?6���?x܃���?�����??:��?[ܹ����?~]4���?�=�ik��?�����?ׄ�Y>��?� �z��?��O���?G -���?߭����?e%�N���?��<s��?����?J�$�;i�?��["�?����s���^\࿭��ƚR�?b�'�W�?t�O;�쿴p�q��?nK�@��?ݜ	T��˿�b.�9B���h���4N3A'�տȎC8S�?Cl�ԕG�?Ƹ�O���?�����?h,bCy�?^���G�?�&{��;�?ջ����?�ߋQ��?KMV���?�n"R�i�?��N���?�Jv��?�-�Ej��?kV8#a��?K4�KO�?��.�k�?Jz��m,�?
 -%g��?'����h�?�%���?)PۗO�?Ƹ~�4Щ?��M_/y�?8���ܡ?@�;�h��?��U׷�?Y4m��?�s��?3v{�s�?FY�ة�?D�0Ϻ��?��_�?���Z�;{?���G�v?�Iծͨۿ�s��?��E��^�?�щ����?v.&"D��ⴇ���?Id��q쿧�����?'��[$Fܿ���TI�j6�G��?�����;�?>SX���?A�,�߿'Sm�R����٨e�9���Ԅߵۿ�-�+ e���p�֜�?���.���?$7��S�?<T��O�?0���.�?�A"�:�?K�Iv��?뢶����?�qu�d�?�e0���?��%�?:�?����w�? i�|&��?8)XHW��?��i���?��q:���?,d� =��?^0_���?�?;����?�������?�F�Y��?J�?����?������?.��;Y��?D���?¥5��?eImt��?U�%���?S{����?������?�k�����?����|��?ŉ���?,K@��?I  /%�?��%
�޿��sr|���B���Bx�?�mp�e��?���+￱����?w�Vi�?���)W��Af%��LG�$���҅�aPڿ����ql�?W�b�$��?"��� _�?�������?Ǣ�qD��?��q�3��?Q�*h��?�!ՈqS�?�(�=��?8��5�"�?1� ���?�] �c�?i\�Dr�?��f
W�?0Y��?������?&�-�,��?t�����?������?�́�W�?w�eC�?���ų�?L�H��_�?���ܝ�?�M�#@�?e�\�\�?��`A�?8H@��?�Ea�.y�?��p`�?�Rλ�-�?�<�C�?�,A)��?��	5��{?bU��%w?�?UP6��(�C1��?��r��?�dT�xտ^�Ǯ��G;t����?����D���b2(��?ːMb�̿���R��Y�Z[7�?�|�/���?VT��GR�?�"�Vvqڿ�� E�+������P���W?M���-��RҙݿWP�P���\��N�?�>5E/X�?�� ���?���@��?N�(0��?��|��?uc�7���?�l�]���?�ag�R�?��iX6��?���1�?���q�?Jd's���? ���u��?�5ᙏ��?k�e�+��?,cteH��?C,H��?��N���?�I�y��?fUD?���?;!�e��?�S����?g��F��?�õ����?( �,��?H6O�m��?����?Eɒ���?�����?� ����?�O�̊���r���a�?�:�Mw8�?��^�r�?�;�S����&�|m�?\�i�ǿ���Bw�?�j���￥��<��?N|�	c�?�}�ؿ�?lA���D�0y~DQ9�E�=ݨ޿>�p�ݼ?#� ���?��=�޲�?�-�'��?�P����?+�b���?M��h���?������?Ig&��v�?��nu�?5+;>ʍ�?.�����?�� �T��?����t�?��`&&�?���4�O�?�>x8WB�?�iUk��?A����?��$�a�?0����t�?:_�C0�?=�B�?�(h�?4J����?s�-�?��^�ʙ?�i�=t�?m�7Yؑ?�l�񰯍?>�M7��?M�8̉�?�� �D�?Ԅak|?;FT)�w?�W�|���m�|���e(̿�KS�i鿎�^���35|���?7&��3r�`s?��e�?�uYC?R��4��\3��;�?�������?��-ɾ�?&��{տ�)�o��|�Ζ��ￚǋ�J��sHu?�V���ſX7����?G������?�h6�?�;{�?1�9� ��?�ps�Y��?$�!-Cb�?����{�?�.��q@�?��r�|��?v!��(�?r���j�?)Mձ���?�Y���?���؅��?- �p���?��hiN��?�Ű���?=�����?����&��?�����?q _G>��?q�Ģf��?�5F�3��?;A$����?��^�#��?�Q�g��?0�̊���?��s
���?/�E����?�DV���?�g�H$��T��ь�?t��i��?�8���?�� #R��σŹ��?�6pĨ߿XT����?~ ֥�(￯@Z���?j\{%L��?��D�<r�?u4qG�E�Ao�D�2qBj�?�2���?%#*�D�?mD*��?ڡ-��N�?��|���?�en+�?�E�T�?T�U���?_|�	��?�;倥��? &���?SKG.2^�?|��,\H�?CI�|���?��^�Ǿ�?9��B���?K��s��?U���8�?G�;$��?��n޷?y�tjeܳ?����S��?rn�=�~�?3�:wߦ?��U)��?(�.d��?[^�1pT�?��4���? ږ�7�?F���N�?���4�?��T��?K�7`p�?�6�ˣ}?��R�9!x?F93��<�?Z�L����w�R鿒�<��[�D�ݻ���,S�?��{�뿩&�#�%�?��W�$�?�aMLI��f���?L�����?�\R���?�e�}��ο������꿴�g������u���0�� �7���c��wʿ��F�D�?��mkW�?�(��+��?�T�4�?o����M�?��$��?OU}<�?�w�6�`�?�:�/�-�?�x�F���?	�ZI��?6�D��d�?B�<g��?T�ɂ��?�-'q��?V�K�Q��?}��,O��?��=a���?4���-��?W�4F���?���kW��?������?M	�J��?�$)K ��?v�����?Iu�d��?xwu&a��?�5���?������?��Bf���?�������?�����п�1���忟��]ok��75��H�޿@'=������v��?�T���loQ`X��?�;b���.c�Z3�� ~�ɨ��?���fh�?�U���(�Y�!��k�3!f㿼-,�J��%	?���? ��-2�?b
H�+�?��`���?/!��Km�?FE����?�w�o�?灴i*�?�<	4�?�Kt��?Iaf��?��H� ��?4��;)�?[J�<W�?�7��O�?_n���?�}�eG��?���OB�?�ocF_Z�?wb��C�?��%\�ܰ?�%��G�?{Z;�V�?�԰�8j�?W�?.[&�?H�+��ݚ?��t�Y�?8��߬��?�:�GR�?�Q�!���?=�e�d�?��Z�{ˁ?����3�}?=HLJJ�x?���o ��?���sx�=��A������P�ڃ/��?�R����?mӴ<'�nL����?
���~W�?;7B������o��Ԟ{4A~�?�2jk�F�?�U~#llÿ��zs�3ԁvI��b����6�>��`��=B-�ο��?��?&����?��
��?#��M��?a(� �?���k�c�?P}[(�?iĘ�E�?���!��?�$�"A��?*!�X��?�h2�=^�?������?�7�q��?�qQ��?*G�R���?.��J��?���6��?3 ���?W��{��?����?�@�x���?�*r	.��?ҝŃ��?0��o���?w�&���?8ٹ�Z��?�M/����?��հ��?�3;���?C�����?�P�t�r�?]U���9�ƭ=忬�">2�d���)�$+��?��Z�����-y�f��?!�xv=��
)T�>}ҿ�z0*�?p�jwA�? ��e修�X���=�{)�E忚��NႳ�al�=��?�?\�z^�?eVJ���?�)�(��?�Y}[���?멿�j �?�>���?=�x���?�'� j�?�ۀ�K>�?eg�c�W�?���?�C[[���?�y�ƃ��?���l��?�{�}��?)�i���?��Yq׽?UO崫ָ?��z��?@��2�?���ǝ�?��KΧ?
�ғͣ?��a�y�?��Ph~g�?�IC�r˖?vࣈ���?A����?cE<�?�l�e҅?�W�0�&�?q��9�1~?�4M�Zy?b�|(���?U�"��N�?c�z��UC�⸍޿��)� �?d M��ڽ?��yAeؿ���hz)�?�����P�?�WQ����#�� �Ϳ��Ԗ���?wM���?'l��G�����H���>,A,��
ѥ���U3��㿟	��ѿ�ۭ�Y�?Ή�i�H�?,@�\��?�ג[�;�?L��m��?�JP��+�?�D����?���B�)�?E�.�Y�?��ch���?ѯ��%�?=RúW�?G��?v��?��Z�P��?0�D�&��?�VeY��?��@��?FlV3~��?f���1��?!���#��?�l�����?�wOQ���?q���?��V���?���y���?���D��?D�S��?�й���?g�Т���?Pf����??P�����?Ǥ$t��?�z#ʊZ忟�&,�￞��A������ο��&i2��?�&��I���9><{t�?}���v��4k�P�ݿis���?�H��P�?B?/����t�L���+��mJ"7����pܭ�ĩ�?Ƀe|h~�?"S
Lg�?OS����?�ln����?���Q�?'6O*�#�?2~�W���?�`��K��?V��Y���?�~�y��?�}܇�?������?P8�����??��$O�?5�3l��?y?(� E�?�fQC�l�?�`:�R�?��C �?h���?�e_"D-�?ŒݳE�?��W
�0�?��}�ˠ?�����?7�2p�=�?�� U�?�|py�?jd�����?�fHT�?�?2㣟���?Jm�R�~?��6(k�y?k�����Ŀw�4K��?�R�7^�ÿ�W#��?�ܔe�?���ѿ�q-S뫮�4.�@օǿϾ{�Vf�?W��{�T쿻�>��.ؿ>ϧt��?�*�쐽�?\:c��Ȟ?�9#�9濸�⌰ￆt'��P��
�#ͳ�俼���p�ӿ�o�fu�;?�֞
��?����?�v�C���?����`�?"i8���?c�q�,��?�	[���?��/����?�x4���?�q����?�g�Q�?L�_�ۆ�?��j ��?T�rv���?�BC����?[5N�1��?w\����?ťa���?������?	�a����?O�
T���?��� ���?+,����?�?=���?zk���?�A�M��?�=�;���?�s�_���?)+�����?�4Q���?�x�p�V�?���4�۹?�Dz��w��ӧ�i��5Y����?�=V��?�����e������?��`ڿ9��1���JQ��'Y�?���̳�?���ݿ��|���k�%����cـ��ɿ��2=e��?H|��c��?���i�?'X�B^��?�sz.�?o4��̟�?��;�z�?l.w�/�?X��	�	�?�e�AT-�?��N��N�?���q���?�?O��7�?Ww���?2�����?���JY�?U�O��?!ރ���?��C�2Ϲ?�%^\�z�?�e׀߱?�=�侼�?�Gn���?Kz%G��?�k�S�?v<��z�?����?��?#��[)��?�M�q�c�?X��C�?��B�v��?JO�܂?�s�}�`?�
�{z?�X蔒b��)6!���?�dN��j�?C��Dqr�?OLd�?��7��ȋ���$�?O���>mܿ5�b��'�?��u[���G��Ό��Q� ��f�?nc�ـ�?8�B���??��ۮj�kv�X￦	:Q����k%�N�忟%/#(ֿ(%"�|��c�tq]�?:Bh���?��{P"\�?N2B�j�?c��p��?v�Ӓ��?H](h���?k��Xr��?O����?�]����?�3W�RJ�?!F��*��?n���?�&
���?�3��B��?5����?,��y��?4g�+��?�	�n��?=[zLa��?�'�k��?{������?�������?�޹{��?(�`���?�VL(F��?���m��?�����?�v���?���l���?��E����q�p�E��?���[տR�=[yտ8��1��?��t�HO�?�d�9e^��H�g��?��1�^�ȿ,��YY�E�b�?"$���?����m�ֿ�G�G�(�"T����l�>�п^�u�a�?�:���?�@f��?�K&E��?��zD�?H�c���?��Y���?>��d��? �i�X�?��R�s�?F�b����?����|[�?%m���?c�<��[�?�>D�BN�?��<V��?���O���?Eƭ���?t$�mK�?���� �?�r�2L5�?p%O7L�?�Xb�4�?��E-���?��>�p�?�
��?����"�?�+��R�?�b�Yɲ�?0I�Rǋ?�ۡ��?��ka�7�?ž�r�?[�J틗z?'�Lƴ��y5���?qVd*�?~�i�%�?V��2�?=ou/�� �&;!�?,��2�y�G�_ �c�?����w��}�vZ5��n4/��w�?��}��?������?��}⿫�g����|�Zi���=[��Ѭ�[RؿA*�����%2-;�?�V���h�?�b6
��?�[Ѵ��?�F�^}�?<~�yYr�?~
��z��?�����?h�ثw�?���h���?ɍ)�mC�?_p�b}�?S���?�߰e��?��$���?H.9��?VZ1�@��?������?��F��?�4�� ��?\���>��?8���?��{g���?�z��l��?$9%���?�`?��?�ᾇz��?�!D����?�n����?�Q�����?a

model/CastCastmodel/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes

:7dp
	model/addAddV2model/Reshape:output:0model/Cast:y:0*
T0*+
_output_shapes
:���������7d�
%model/self_attn/matmul/ReadVariableOpReadVariableOp.model_self_attn_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmulBatchMatMulV2model/add:z:0-model/self_attn/matmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_1/ReadVariableOpReadVariableOp0model_self_attn_matmul_1_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_1BatchMatMulV2model/add:z:0/model/self_attn/matmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_2/ReadVariableOpReadVariableOp0model_self_attn_matmul_2_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_2BatchMatMulV2model/add:z:0/model/self_attn/matmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_3/ReadVariableOpReadVariableOp0model_self_attn_matmul_3_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_3BatchMatMulV2model/add:z:0/model/self_attn/matmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_4/ReadVariableOpReadVariableOp0model_self_attn_matmul_4_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_4BatchMatMulV2model/add:z:0/model/self_attn/matmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_5/ReadVariableOpReadVariableOp0model_self_attn_matmul_5_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_5BatchMatMulV2model/add:z:0/model/self_attn/matmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_6/ReadVariableOpReadVariableOp0model_self_attn_matmul_6_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_6BatchMatMulV2model/add:z:0/model/self_attn/matmul_6/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_7/ReadVariableOpReadVariableOp0model_self_attn_matmul_7_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_7BatchMatMulV2model/add:z:0/model/self_attn/matmul_7/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_8/ReadVariableOpReadVariableOp0model_self_attn_matmul_8_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_8BatchMatMulV2model/add:z:0/model/self_attn/matmul_8/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
'model/self_attn/matmul_9/ReadVariableOpReadVariableOp0model_self_attn_matmul_9_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_9BatchMatMulV2model/add:z:0/model/self_attn/matmul_9/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
(model/self_attn/matmul_10/ReadVariableOpReadVariableOp1model_self_attn_matmul_10_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_10BatchMatMulV2model/add:z:00model/self_attn/matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
(model/self_attn/matmul_11/ReadVariableOpReadVariableOp1model_self_attn_matmul_11_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_11BatchMatMulV2model/add:z:00model/self_attn/matmul_11/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
(model/self_attn/matmul_12/ReadVariableOpReadVariableOp1model_self_attn_matmul_12_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_12BatchMatMulV2model/add:z:00model/self_attn/matmul_12/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
(model/self_attn/matmul_13/ReadVariableOpReadVariableOp1model_self_attn_matmul_13_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_13BatchMatMulV2model/add:z:00model/self_attn/matmul_13/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
(model/self_attn/matmul_14/ReadVariableOpReadVariableOp1model_self_attn_matmul_14_readvariableop_resource*
_output_shapes

:dd*
dtype0�
model/self_attn/matmul_14BatchMatMulV2model/add:z:00model/self_attn/matmul_14/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�_
model/self_attn/ConstConst*
_output_shapes

:77*
dtype0*�^
value�^B�^77"�^      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                                      ��  ��  ��  ��  ��  ��                                                                                                                                                                                                          ��  ��  ��  ��  ��                                                                                                                                                                                                              ��  ��  ��  ��                                                                                                                                                                                                                  ��  ��  ��                                                                                                                                                                                                                      ��  ��                                                                                                                                                                                                                          ��                                                                                                                                                                                                                            r
model/self_attn/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����7   7   �
model/self_attn/ReshapeReshapemodel/self_attn/Const:output:0&model/self_attn/Reshape/shape:output:0*
T0*"
_output_shapes
:77r
model/self_attn/ShapeShapemodel/self_attn/matmul:output:0*
T0*
_output_shapes
::��m
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
valueB:�
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
value	B :�
model/self_attn/Tile/multiplesPack&model/self_attn/strided_slice:output:0)model/self_attn/Tile/multiples/1:output:0)model/self_attn/Tile/multiples/2:output:0*
N*
T0*
_output_shapes
:�
model/self_attn/TileTile model/self_attn/Reshape:output:0'model/self_attn/Tile/multiples:output:0*
T0*+
_output_shapes
:���������77h
model/self_attn/zerosConst* 
_output_shapes
:
 77*
dtype0*
valueB
 77s
model/self_attn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/self_attn/transpose	Transposemodel/self_attn/matmul:output:0'model/self_attn/transpose/perm:output:0*
T0*+
_output_shapes
:���������d7�
model/self_attn/matmul_15BatchMatMulV2!model/self_attn/matmul_5:output:0model/self_attn/transpose:y:0*
T0*+
_output_shapes
:���������77^
model/self_attn/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
model/self_attn/truedivRealDiv"model/self_attn/matmul_15:output:0"model/self_attn/truediv/y:output:0*
T0*+
_output_shapes
:���������77�
model/self_attn/addAddV2model/self_attn/truediv:z:0model/self_attn/Tile:output:0*
T0*+
_output_shapes
:���������77q
model/self_attn/SoftmaxSoftmaxmodel/self_attn/add:z:0*
T0*+
_output_shapes
:���������77�
model/self_attn/matmul_16BatchMatMulV2!model/self_attn/Softmax:softmax:0"model/self_attn/matmul_10:output:0*
T0*+
_output_shapes
:���������7d]
model/self_attn/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/self_attn/concatConcatV2model/self_attn/zeros:output:0!model/self_attn/Softmax:softmax:0$model/self_attn/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������77u
 model/self_attn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/self_attn/transpose_1	Transpose!model/self_attn/matmul_1:output:0)model/self_attn/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d7�
model/self_attn/matmul_17BatchMatMulV2!model/self_attn/matmul_6:output:0model/self_attn/transpose_1:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
model/self_attn/truediv_1RealDiv"model/self_attn/matmul_17:output:0$model/self_attn/truediv_1/y:output:0*
T0*+
_output_shapes
:���������77�
model/self_attn/add_1AddV2model/self_attn/truediv_1:z:0model/self_attn/Tile:output:0*
T0*+
_output_shapes
:���������77u
model/self_attn/Softmax_1Softmaxmodel/self_attn/add_1:z:0*
T0*+
_output_shapes
:���������77�
model/self_attn/matmul_18BatchMatMulV2#model/self_attn/Softmax_1:softmax:0"model/self_attn/matmul_11:output:0*
T0*+
_output_shapes
:���������7d_
model/self_attn/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/self_attn/concat_1ConcatV2model/self_attn/concat:output:0#model/self_attn/Softmax_1:softmax:0&model/self_attn/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:���������77u
 model/self_attn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/self_attn/transpose_2	Transpose!model/self_attn/matmul_2:output:0)model/self_attn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������d7�
model/self_attn/matmul_19BatchMatMulV2!model/self_attn/matmul_7:output:0model/self_attn/transpose_2:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
model/self_attn/truediv_2RealDiv"model/self_attn/matmul_19:output:0$model/self_attn/truediv_2/y:output:0*
T0*+
_output_shapes
:���������77�
model/self_attn/add_2AddV2model/self_attn/truediv_2:z:0model/self_attn/Tile:output:0*
T0*+
_output_shapes
:���������77u
model/self_attn/Softmax_2Softmaxmodel/self_attn/add_2:z:0*
T0*+
_output_shapes
:���������77�
model/self_attn/matmul_20BatchMatMulV2#model/self_attn/Softmax_2:softmax:0"model/self_attn/matmul_12:output:0*
T0*+
_output_shapes
:���������7d_
model/self_attn/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/self_attn/concat_2ConcatV2!model/self_attn/concat_1:output:0#model/self_attn/Softmax_2:softmax:0&model/self_attn/concat_2/axis:output:0*
N*
T0*+
_output_shapes
:���������77u
 model/self_attn/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/self_attn/transpose_3	Transpose!model/self_attn/matmul_3:output:0)model/self_attn/transpose_3/perm:output:0*
T0*+
_output_shapes
:���������d7�
model/self_attn/matmul_21BatchMatMulV2!model/self_attn/matmul_8:output:0model/self_attn/transpose_3:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
model/self_attn/truediv_3RealDiv"model/self_attn/matmul_21:output:0$model/self_attn/truediv_3/y:output:0*
T0*+
_output_shapes
:���������77�
model/self_attn/add_3AddV2model/self_attn/truediv_3:z:0model/self_attn/Tile:output:0*
T0*+
_output_shapes
:���������77u
model/self_attn/Softmax_3Softmaxmodel/self_attn/add_3:z:0*
T0*+
_output_shapes
:���������77�
model/self_attn/matmul_22BatchMatMulV2#model/self_attn/Softmax_3:softmax:0"model/self_attn/matmul_13:output:0*
T0*+
_output_shapes
:���������7d_
model/self_attn/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/self_attn/concat_3ConcatV2!model/self_attn/concat_2:output:0#model/self_attn/Softmax_3:softmax:0&model/self_attn/concat_3/axis:output:0*
N*
T0*+
_output_shapes
:���������77u
 model/self_attn/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/self_attn/transpose_4	Transpose!model/self_attn/matmul_4:output:0)model/self_attn/transpose_4/perm:output:0*
T0*+
_output_shapes
:���������d7�
model/self_attn/matmul_23BatchMatMulV2!model/self_attn/matmul_9:output:0model/self_attn/transpose_4:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
model/self_attn/truediv_4RealDiv"model/self_attn/matmul_23:output:0$model/self_attn/truediv_4/y:output:0*
T0*+
_output_shapes
:���������77�
model/self_attn/add_4AddV2model/self_attn/truediv_4:z:0model/self_attn/Tile:output:0*
T0*+
_output_shapes
:���������77u
model/self_attn/Softmax_4Softmaxmodel/self_attn/add_4:z:0*
T0*+
_output_shapes
:���������77�
model/self_attn/matmul_24BatchMatMulV2#model/self_attn/Softmax_4:softmax:0"model/self_attn/matmul_14:output:0*
T0*+
_output_shapes
:���������7d_
model/self_attn/concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/self_attn/concat_4ConcatV2!model/self_attn/concat_3:output:0#model/self_attn/Softmax_4:softmax:0&model/self_attn/concat_4/axis:output:0*
N*
T0*+
_output_shapes
:���������77h
model/self_attn/concat_5/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
model/self_attn/concat_5ConcatV2"model/self_attn/matmul_16:output:0"model/self_attn/matmul_18:output:0"model/self_attn/matmul_20:output:0"model/self_attn/matmul_22:output:0"model/self_attn/matmul_24:output:0&model/self_attn/concat_5/axis:output:0*
N*
T0*,
_output_shapes
:���������7��
(model/self_attn/matmul_25/ReadVariableOpReadVariableOp1model_self_attn_matmul_25_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
model/self_attn/matmul_25BatchMatMulV2!model/self_attn/concat_5:output:00model/self_attn/matmul_25/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�
model/self_attn/add_5AddV2"model/self_attn/matmul_25:output:0model/add:z:0*
T0*+
_output_shapes
:���������7dd
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����|  �
model/flatten/ReshapeReshapemodel/self_attn/add_5:z:0model/flatten/Const:output:0*
T0*(
_output_shapes
:����������*�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	�**
dtype0�
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
model/dense/LeakyRelu	LeakyRelumodel/dense/BiasAdd:output:0*'
_output_shapes
:����������
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model/dense_1/MatMulMatMul#model/dense/LeakyRelu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_1/SoftmaxSoftmaxmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp&^model/self_attn/matmul/ReadVariableOp(^model/self_attn/matmul_1/ReadVariableOp)^model/self_attn/matmul_10/ReadVariableOp)^model/self_attn/matmul_11/ReadVariableOp)^model/self_attn/matmul_12/ReadVariableOp)^model/self_attn/matmul_13/ReadVariableOp)^model/self_attn/matmul_14/ReadVariableOp(^model/self_attn/matmul_2/ReadVariableOp)^model/self_attn/matmul_25/ReadVariableOp(^model/self_attn/matmul_3/ReadVariableOp(^model/self_attn/matmul_4/ReadVariableOp(^model/self_attn/matmul_5/ReadVariableOp(^model/self_attn/matmul_6/ReadVariableOp(^model/self_attn/matmul_7/ReadVariableOp(^model/self_attn/matmul_8/ReadVariableOp(^model/self_attn/matmul_9/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������: : : : : : : : : : : : : : : : : : : : : : 2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2N
%model/self_attn/matmul/ReadVariableOp%model/self_attn/matmul/ReadVariableOp2R
'model/self_attn/matmul_1/ReadVariableOp'model/self_attn/matmul_1/ReadVariableOp2T
(model/self_attn/matmul_10/ReadVariableOp(model/self_attn/matmul_10/ReadVariableOp2T
(model/self_attn/matmul_11/ReadVariableOp(model/self_attn/matmul_11/ReadVariableOp2T
(model/self_attn/matmul_12/ReadVariableOp(model/self_attn/matmul_12/ReadVariableOp2T
(model/self_attn/matmul_13/ReadVariableOp(model/self_attn/matmul_13/ReadVariableOp2T
(model/self_attn/matmul_14/ReadVariableOp(model/self_attn/matmul_14/ReadVariableOp2R
'model/self_attn/matmul_2/ReadVariableOp'model/self_attn/matmul_2/ReadVariableOp2T
(model/self_attn/matmul_25/ReadVariableOp(model/self_attn/matmul_25/ReadVariableOp2R
'model/self_attn/matmul_3/ReadVariableOp'model/self_attn/matmul_3/ReadVariableOp2R
'model/self_attn/matmul_4/ReadVariableOp'model/self_attn/matmul_4/ReadVariableOp2R
'model/self_attn/matmul_5/ReadVariableOp'model/self_attn/matmul_5/ReadVariableOp2R
'model/self_attn/matmul_6/ReadVariableOp'model/self_attn/matmul_6/ReadVariableOp2R
'model/self_attn/matmul_7/ReadVariableOp'model/self_attn/matmul_7/ReadVariableOp2R
'model/self_attn/matmul_8/ReadVariableOp'model/self_attn/matmul_8/ReadVariableOp2R
'model/self_attn/matmul_9/ReadVariableOp'model/self_attn/matmul_9/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
��
�

D__inference_self_attn_layer_call_and_return_conditional_losses_27766

inputs0
matmul_readvariableop_resource:dd2
 matmul_1_readvariableop_resource:dd2
 matmul_2_readvariableop_resource:dd2
 matmul_3_readvariableop_resource:dd2
 matmul_4_readvariableop_resource:dd2
 matmul_5_readvariableop_resource:dd2
 matmul_6_readvariableop_resource:dd2
 matmul_7_readvariableop_resource:dd2
 matmul_8_readvariableop_resource:dd2
 matmul_9_readvariableop_resource:dd3
!matmul_10_readvariableop_resource:dd3
!matmul_11_readvariableop_resource:dd3
!matmul_12_readvariableop_resource:dd3
!matmul_13_readvariableop_resource:dd3
!matmul_14_readvariableop_resource:dd4
!matmul_25_readvariableop_resource:	�d
identity

identity_1��matmul/ReadVariableOp�matmul_1/ReadVariableOp�matmul_10/ReadVariableOp�matmul_11/ReadVariableOp�matmul_12/ReadVariableOp�matmul_13/ReadVariableOp�matmul_14/ReadVariableOp�matmul_2/ReadVariableOp�matmul_25/ReadVariableOp�matmul_3/ReadVariableOp�matmul_4/ReadVariableOp�matmul_5/ReadVariableOp�matmul_6/ReadVariableOp�matmul_7/ReadVariableOp�matmul_8/ReadVariableOp�matmul_9/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0t
matmulBatchMatMulV2inputsmatmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_1BatchMatMulV2inputsmatmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_2/ReadVariableOpReadVariableOp matmul_2_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_2BatchMatMulV2inputsmatmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_3/ReadVariableOpReadVariableOp matmul_3_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_3BatchMatMulV2inputsmatmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_4/ReadVariableOpReadVariableOp matmul_4_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_4BatchMatMulV2inputsmatmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_5/ReadVariableOpReadVariableOp matmul_5_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_5BatchMatMulV2inputsmatmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_6/ReadVariableOpReadVariableOp matmul_6_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_6BatchMatMulV2inputsmatmul_6/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_7/ReadVariableOpReadVariableOp matmul_7_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_7BatchMatMulV2inputsmatmul_7/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_8/ReadVariableOpReadVariableOp matmul_8_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_8BatchMatMulV2inputsmatmul_8/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dx
matmul_9/ReadVariableOpReadVariableOp matmul_9_readvariableop_resource*
_output_shapes

:dd*
dtype0x
matmul_9BatchMatMulV2inputsmatmul_9/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_10/ReadVariableOpReadVariableOp!matmul_10_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_10BatchMatMulV2inputs matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_11/ReadVariableOpReadVariableOp!matmul_11_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_11BatchMatMulV2inputs matmul_11/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_12/ReadVariableOpReadVariableOp!matmul_12_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_12BatchMatMulV2inputs matmul_12/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_13/ReadVariableOpReadVariableOp!matmul_13_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_13BatchMatMulV2inputs matmul_13/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7dz
matmul_14/ReadVariableOpReadVariableOp!matmul_14_readvariableop_resource*
_output_shapes

:dd*
dtype0z
	matmul_14BatchMatMulV2inputs matmul_14/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d�_
ConstConst*
_output_shapes

:77*
dtype0*�^
value�^B�^77"�^      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                          ��  ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                              ��  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                                  ��  ��  ��  ��  ��  ��  ��                                                                                                                                                                                                      ��  ��  ��  ��  ��  ��                                                                                                                                                                                                          ��  ��  ��  ��  ��                                                                                                                                                                                                              ��  ��  ��  ��                                                                                                                                                                                                                  ��  ��  ��                                                                                                                                                                                                                      ��  ��                                                                                                                                                                                                                          ��                                                                                                                                                                                                                            b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����7   7   g
ReshapeReshapeConst:output:0Reshape/shape:output:0*
T0*"
_output_shapes
:77R
ShapeShapematmul:output:0*
T0*
_output_shapes
::��]
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
valueB:�
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
value	B :�
Tile/multiplesPackstrided_slice:output:0Tile/multiples/1:output:0Tile/multiples/2:output:0*
N*
T0*
_output_shapes
:m
TileTileReshape:output:0Tile/multiples:output:0*
T0*+
_output_shapes
:���������77X
zerosConst* 
_output_shapes
:
 77*
dtype0*
valueB
 77c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposematmul:output:0transpose/perm:output:0*
T0*+
_output_shapes
:���������d7r
	matmul_15BatchMatMulV2matmul_5:output:0transpose:y:0*
T0*+
_output_shapes
:���������77N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Ap
truedivRealDivmatmul_15:output:0truediv/y:output:0*
T0*+
_output_shapes
:���������77^
addAddV2truediv:z:0Tile:output:0*
T0*+
_output_shapes
:���������77Q
SoftmaxSoftmaxadd:z:0*
T0*+
_output_shapes
:���������77w
	matmul_16BatchMatMulV2Softmax:softmax:0matmul_10:output:0*
T0*+
_output_shapes
:���������7dM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2zeros:output:0Softmax:softmax:0concat/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_1	Transposematmul_1:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_17BatchMatMulV2matmul_6:output:0transpose_1:y:0*
T0*+
_output_shapes
:���������77P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_1RealDivmatmul_17:output:0truediv_1/y:output:0*
T0*+
_output_shapes
:���������77b
add_1AddV2truediv_1:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_1Softmax	add_1:z:0*
T0*+
_output_shapes
:���������77y
	matmul_18BatchMatMulV2Softmax_1:softmax:0matmul_11:output:0*
T0*+
_output_shapes
:���������7dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_1ConcatV2concat:output:0Softmax_1:softmax:0concat_1/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_2	Transposematmul_2:output:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_19BatchMatMulV2matmul_7:output:0transpose_2:y:0*
T0*+
_output_shapes
:���������77P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_2RealDivmatmul_19:output:0truediv_2/y:output:0*
T0*+
_output_shapes
:���������77b
add_2AddV2truediv_2:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_2Softmax	add_2:z:0*
T0*+
_output_shapes
:���������77y
	matmul_20BatchMatMulV2Softmax_2:softmax:0matmul_12:output:0*
T0*+
_output_shapes
:���������7dO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_2ConcatV2concat_1:output:0Softmax_2:softmax:0concat_2/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_3	Transposematmul_3:output:0transpose_3/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_21BatchMatMulV2matmul_8:output:0transpose_3:y:0*
T0*+
_output_shapes
:���������77P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_3RealDivmatmul_21:output:0truediv_3/y:output:0*
T0*+
_output_shapes
:���������77b
add_3AddV2truediv_3:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_3Softmax	add_3:z:0*
T0*+
_output_shapes
:���������77y
	matmul_22BatchMatMulV2Softmax_3:softmax:0matmul_13:output:0*
T0*+
_output_shapes
:���������7dO
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_3ConcatV2concat_2:output:0Softmax_3:softmax:0concat_3/axis:output:0*
N*
T0*+
_output_shapes
:���������77e
transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_4	Transposematmul_4:output:0transpose_4/perm:output:0*
T0*+
_output_shapes
:���������d7t
	matmul_23BatchMatMulV2matmul_9:output:0transpose_4:y:0*
T0*+
_output_shapes
:���������77P
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   At
	truediv_4RealDivmatmul_23:output:0truediv_4/y:output:0*
T0*+
_output_shapes
:���������77b
add_4AddV2truediv_4:z:0Tile:output:0*
T0*+
_output_shapes
:���������77U
	Softmax_4Softmax	add_4:z:0*
T0*+
_output_shapes
:���������77y
	matmul_24BatchMatMulV2Softmax_4:softmax:0matmul_14:output:0*
T0*+
_output_shapes
:���������7dO
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_4ConcatV2concat_3:output:0Softmax_4:softmax:0concat_4/axis:output:0*
N*
T0*+
_output_shapes
:���������77X
concat_5/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concat_5ConcatV2matmul_16:output:0matmul_18:output:0matmul_20:output:0matmul_22:output:0matmul_24:output:0concat_5/axis:output:0*
N*
T0*,
_output_shapes
:���������7�{
matmul_25/ReadVariableOpReadVariableOp!matmul_25_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
	matmul_25BatchMatMulV2concat_5:output:0 matmul_25/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7d`
add_5AddV2matmul_25:output:0inputs*
T0*+
_output_shapes
:���������7d\
IdentityIdentity	add_5:z:0^NoOp*
T0*+
_output_shapes
:���������7df

Identity_1Identityconcat_4:output:0^NoOp*
T0*+
_output_shapes
:���������77�
NoOpNoOp^matmul/ReadVariableOp^matmul_1/ReadVariableOp^matmul_10/ReadVariableOp^matmul_11/ReadVariableOp^matmul_12/ReadVariableOp^matmul_13/ReadVariableOp^matmul_14/ReadVariableOp^matmul_2/ReadVariableOp^matmul_25/ReadVariableOp^matmul_3/ReadVariableOp^matmul_4/ReadVariableOp^matmul_5/ReadVariableOp^matmul_6/ReadVariableOp^matmul_7/ReadVariableOp^matmul_8/ReadVariableOp^matmul_9/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������7d: : : : : : : : : : : : : : : : 2.
matmul/ReadVariableOpmatmul/ReadVariableOp22
matmul_1/ReadVariableOpmatmul_1/ReadVariableOp24
matmul_10/ReadVariableOpmatmul_10/ReadVariableOp24
matmul_11/ReadVariableOpmatmul_11/ReadVariableOp24
matmul_12/ReadVariableOpmatmul_12/ReadVariableOp24
matmul_13/ReadVariableOpmatmul_13/ReadVariableOp24
matmul_14/ReadVariableOpmatmul_14/ReadVariableOp22
matmul_2/ReadVariableOpmatmul_2/ReadVariableOp24
matmul_25/ReadVariableOpmatmul_25/ReadVariableOp22
matmul_3/ReadVariableOpmatmul_3/ReadVariableOp22
matmul_4/ReadVariableOpmatmul_4/ReadVariableOp22
matmul_5/ReadVariableOpmatmul_5/ReadVariableOp22
matmul_6/ReadVariableOpmatmul_6/ReadVariableOp22
matmul_7/ReadVariableOpmatmul_7/ReadVariableOp22
matmul_8/ReadVariableOpmatmul_8/ReadVariableOp22
matmul_9/ReadVariableOpmatmul_9/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������7d
 
_user_specified_nameinputs
��
�H
__inference__traced_save_28314
file_prefix>
$read_disablecopyonread_conv2d_kernel:d2
$read_1_disablecopyonread_conv2d_bias:d7
%read_2_disablecopyonread_self_attn_k0:dd7
%read_3_disablecopyonread_self_attn_k1:dd7
%read_4_disablecopyonread_self_attn_k2:dd7
%read_5_disablecopyonread_self_attn_k3:dd7
%read_6_disablecopyonread_self_attn_k4:dd7
%read_7_disablecopyonread_self_attn_q0:dd7
%read_8_disablecopyonread_self_attn_q1:dd7
%read_9_disablecopyonread_self_attn_q2:dd8
&read_10_disablecopyonread_self_attn_q3:dd8
&read_11_disablecopyonread_self_attn_q4:dd8
&read_12_disablecopyonread_self_attn_v0:dd8
&read_13_disablecopyonread_self_attn_v1:dd8
&read_14_disablecopyonread_self_attn_v2:dd8
&read_15_disablecopyonread_self_attn_v3:dd8
&read_16_disablecopyonread_self_attn_v4:dd8
%read_17_disablecopyonread_self_attn_w:	�d9
&read_18_disablecopyonread_dense_kernel:	�*2
$read_19_disablecopyonread_dense_bias::
(read_20_disablecopyonread_dense_1_kernel:4
&read_21_disablecopyonread_dense_1_bias:-
#read_22_disablecopyonread_adam_iter:	 /
%read_23_disablecopyonread_adam_beta_1: /
%read_24_disablecopyonread_adam_beta_2: .
$read_25_disablecopyonread_adam_decay: 6
,read_26_disablecopyonread_adam_learning_rate: )
read_27_disablecopyonread_total: )
read_28_disablecopyonread_count: 9
*read_29_disablecopyonread_true_positives_1:	�9
*read_30_disablecopyonread_true_negatives_1:	�:
+read_31_disablecopyonread_false_positives_1:	�:
+read_32_disablecopyonread_false_negatives_1:	�7
(read_33_disablecopyonread_true_positives:	�7
(read_34_disablecopyonread_true_negatives:	�8
)read_35_disablecopyonread_false_positives:	�8
)read_36_disablecopyonread_false_negatives:	�H
.read_37_disablecopyonread_adam_conv2d_kernel_m:d:
,read_38_disablecopyonread_adam_conv2d_bias_m:d?
-read_39_disablecopyonread_adam_self_attn_k0_m:dd?
-read_40_disablecopyonread_adam_self_attn_k1_m:dd?
-read_41_disablecopyonread_adam_self_attn_k2_m:dd?
-read_42_disablecopyonread_adam_self_attn_k3_m:dd?
-read_43_disablecopyonread_adam_self_attn_k4_m:dd?
-read_44_disablecopyonread_adam_self_attn_q0_m:dd?
-read_45_disablecopyonread_adam_self_attn_q1_m:dd?
-read_46_disablecopyonread_adam_self_attn_q2_m:dd?
-read_47_disablecopyonread_adam_self_attn_q3_m:dd?
-read_48_disablecopyonread_adam_self_attn_q4_m:dd?
-read_49_disablecopyonread_adam_self_attn_v0_m:dd?
-read_50_disablecopyonread_adam_self_attn_v1_m:dd?
-read_51_disablecopyonread_adam_self_attn_v2_m:dd?
-read_52_disablecopyonread_adam_self_attn_v3_m:dd?
-read_53_disablecopyonread_adam_self_attn_v4_m:dd?
,read_54_disablecopyonread_adam_self_attn_w_m:	�d@
-read_55_disablecopyonread_adam_dense_kernel_m:	�*9
+read_56_disablecopyonread_adam_dense_bias_m:A
/read_57_disablecopyonread_adam_dense_1_kernel_m:;
-read_58_disablecopyonread_adam_dense_1_bias_m:H
.read_59_disablecopyonread_adam_conv2d_kernel_v:d:
,read_60_disablecopyonread_adam_conv2d_bias_v:d?
-read_61_disablecopyonread_adam_self_attn_k0_v:dd?
-read_62_disablecopyonread_adam_self_attn_k1_v:dd?
-read_63_disablecopyonread_adam_self_attn_k2_v:dd?
-read_64_disablecopyonread_adam_self_attn_k3_v:dd?
-read_65_disablecopyonread_adam_self_attn_k4_v:dd?
-read_66_disablecopyonread_adam_self_attn_q0_v:dd?
-read_67_disablecopyonread_adam_self_attn_q1_v:dd?
-read_68_disablecopyonread_adam_self_attn_q2_v:dd?
-read_69_disablecopyonread_adam_self_attn_q3_v:dd?
-read_70_disablecopyonread_adam_self_attn_q4_v:dd?
-read_71_disablecopyonread_adam_self_attn_v0_v:dd?
-read_72_disablecopyonread_adam_self_attn_v1_v:dd?
-read_73_disablecopyonread_adam_self_attn_v2_v:dd?
-read_74_disablecopyonread_adam_self_attn_v3_v:dd?
-read_75_disablecopyonread_adam_self_attn_v4_v:dd?
,read_76_disablecopyonread_adam_self_attn_w_v:	�d@
-read_77_disablecopyonread_adam_dense_kernel_v:	�*9
+read_78_disablecopyonread_adam_dense_bias_v:A
/read_79_disablecopyonread_adam_dense_1_kernel_v:;
-read_80_disablecopyonread_adam_dense_1_bias_v:
savev2_const
identity_163��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:d*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:di

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:dx
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:d_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:dy
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_self_attn_k0"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_self_attn_k0^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddc

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:ddy
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_self_attn_k1"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_self_attn_k1^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddc

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:ddy
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_self_attn_k2"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_self_attn_k2^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddc

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:ddy
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_self_attn_k3"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_self_attn_k3^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:ddy
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_self_attn_k4"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_self_attn_k4^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:ddy
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_self_attn_q0"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_self_attn_q0^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:ddy
Read_8/DisableCopyOnReadDisableCopyOnRead%read_8_disablecopyonread_self_attn_q1"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp%read_8_disablecopyonread_self_attn_q1^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:ddy
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_self_attn_q2"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_self_attn_q2^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:dd{
Read_10/DisableCopyOnReadDisableCopyOnRead&read_10_disablecopyonread_self_attn_q3"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp&read_10_disablecopyonread_self_attn_q3^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:dd{
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_self_attn_q4"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_self_attn_q4^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:dd{
Read_12/DisableCopyOnReadDisableCopyOnRead&read_12_disablecopyonread_self_attn_v0"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp&read_12_disablecopyonread_self_attn_v0^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:dd{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_self_attn_v1"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_self_attn_v1^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:dd{
Read_14/DisableCopyOnReadDisableCopyOnRead&read_14_disablecopyonread_self_attn_v2"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp&read_14_disablecopyonread_self_attn_v2^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:dd{
Read_15/DisableCopyOnReadDisableCopyOnRead&read_15_disablecopyonread_self_attn_v3"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp&read_15_disablecopyonread_self_attn_v3^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:dd{
Read_16/DisableCopyOnReadDisableCopyOnRead&read_16_disablecopyonread_self_attn_v4"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp&read_16_disablecopyonread_self_attn_v4^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:ddz
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_self_attn_w"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_self_attn_w^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�d*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�df
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	�d{
Read_18/DisableCopyOnReadDisableCopyOnRead&read_18_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp&read_18_disablecopyonread_dense_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�**
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�*f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	�*y
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_dense_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_20/DisableCopyOnReadDisableCopyOnRead(read_20_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp(read_20_disablecopyonread_dense_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_21/DisableCopyOnReadDisableCopyOnRead&read_21_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp&read_21_disablecopyonread_dense_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_22/DisableCopyOnReadDisableCopyOnRead#read_22_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp#read_22_disablecopyonread_adam_iter^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_adam_beta_1^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_adam_beta_2^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_25/DisableCopyOnReadDisableCopyOnRead$read_25_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp$read_25_disablecopyonread_adam_decay^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_26/DisableCopyOnReadDisableCopyOnRead,read_26_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp,read_26_disablecopyonread_adam_learning_rate^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_27/DisableCopyOnReadDisableCopyOnReadread_27_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOpread_27_disablecopyonread_total^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_count^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_29/DisableCopyOnReadDisableCopyOnRead*read_29_disablecopyonread_true_positives_1"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp*read_29_disablecopyonread_true_positives_1^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_30/DisableCopyOnReadDisableCopyOnRead*read_30_disablecopyonread_true_negatives_1"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp*read_30_disablecopyonread_true_negatives_1^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_31/DisableCopyOnReadDisableCopyOnRead+read_31_disablecopyonread_false_positives_1"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp+read_31_disablecopyonread_false_positives_1^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_32/DisableCopyOnReadDisableCopyOnRead+read_32_disablecopyonread_false_negatives_1"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp+read_32_disablecopyonread_false_negatives_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_33/DisableCopyOnReadDisableCopyOnRead(read_33_disablecopyonread_true_positives"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp(read_33_disablecopyonread_true_positives^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_34/DisableCopyOnReadDisableCopyOnRead(read_34_disablecopyonread_true_negatives"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp(read_34_disablecopyonread_true_negatives^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_35/DisableCopyOnReadDisableCopyOnRead)read_35_disablecopyonread_false_positives"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp)read_35_disablecopyonread_false_positives^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_36/DisableCopyOnReadDisableCopyOnRead)read_36_disablecopyonread_false_negatives"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp)read_36_disablecopyonread_false_negatives^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_conv2d_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_conv2d_kernel_m^Read_37/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:d*
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:dm
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
:d�
Read_38/DisableCopyOnReadDisableCopyOnRead,read_38_disablecopyonread_adam_conv2d_bias_m"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp,read_38_disablecopyonread_adam_conv2d_bias_m^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_39/DisableCopyOnReadDisableCopyOnRead-read_39_disablecopyonread_adam_self_attn_k0_m"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp-read_39_disablecopyonread_adam_self_attn_k0_m^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_40/DisableCopyOnReadDisableCopyOnRead-read_40_disablecopyonread_adam_self_attn_k1_m"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp-read_40_disablecopyonread_adam_self_attn_k1_m^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_41/DisableCopyOnReadDisableCopyOnRead-read_41_disablecopyonread_adam_self_attn_k2_m"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp-read_41_disablecopyonread_adam_self_attn_k2_m^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_42/DisableCopyOnReadDisableCopyOnRead-read_42_disablecopyonread_adam_self_attn_k3_m"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp-read_42_disablecopyonread_adam_self_attn_k3_m^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_43/DisableCopyOnReadDisableCopyOnRead-read_43_disablecopyonread_adam_self_attn_k4_m"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp-read_43_disablecopyonread_adam_self_attn_k4_m^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_44/DisableCopyOnReadDisableCopyOnRead-read_44_disablecopyonread_adam_self_attn_q0_m"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp-read_44_disablecopyonread_adam_self_attn_q0_m^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_45/DisableCopyOnReadDisableCopyOnRead-read_45_disablecopyonread_adam_self_attn_q1_m"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp-read_45_disablecopyonread_adam_self_attn_q1_m^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_46/DisableCopyOnReadDisableCopyOnRead-read_46_disablecopyonread_adam_self_attn_q2_m"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp-read_46_disablecopyonread_adam_self_attn_q2_m^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_47/DisableCopyOnReadDisableCopyOnRead-read_47_disablecopyonread_adam_self_attn_q3_m"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp-read_47_disablecopyonread_adam_self_attn_q3_m^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_adam_self_attn_q4_m"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_adam_self_attn_q4_m^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_49/DisableCopyOnReadDisableCopyOnRead-read_49_disablecopyonread_adam_self_attn_v0_m"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp-read_49_disablecopyonread_adam_self_attn_v0_m^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0o
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dde
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_50/DisableCopyOnReadDisableCopyOnRead-read_50_disablecopyonread_adam_self_attn_v1_m"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp-read_50_disablecopyonread_adam_self_attn_v1_m^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_51/DisableCopyOnReadDisableCopyOnRead-read_51_disablecopyonread_adam_self_attn_v2_m"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp-read_51_disablecopyonread_adam_self_attn_v2_m^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_52/DisableCopyOnReadDisableCopyOnRead-read_52_disablecopyonread_adam_self_attn_v3_m"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp-read_52_disablecopyonread_adam_self_attn_v3_m^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_53/DisableCopyOnReadDisableCopyOnRead-read_53_disablecopyonread_adam_self_attn_v4_m"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp-read_53_disablecopyonread_adam_self_attn_v4_m^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_54/DisableCopyOnReadDisableCopyOnRead,read_54_disablecopyonread_adam_self_attn_w_m"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp,read_54_disablecopyonread_adam_self_attn_w_m^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�d*
dtype0q
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�dh
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:	�d�
Read_55/DisableCopyOnReadDisableCopyOnRead-read_55_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp-read_55_disablecopyonread_adam_dense_kernel_m^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�**
dtype0q
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�*h
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:	�*�
Read_56/DisableCopyOnReadDisableCopyOnRead+read_56_disablecopyonread_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp+read_56_disablecopyonread_adam_dense_bias_m^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead/read_57_disablecopyonread_adam_dense_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp/read_57_disablecopyonread_adam_dense_1_kernel_m^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_58/DisableCopyOnReadDisableCopyOnRead-read_58_disablecopyonread_adam_dense_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp-read_58_disablecopyonread_adam_dense_1_bias_m^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead.read_59_disablecopyonread_adam_conv2d_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp.read_59_disablecopyonread_adam_conv2d_kernel_v^Read_59/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:d*
dtype0x
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:do
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*&
_output_shapes
:d�
Read_60/DisableCopyOnReadDisableCopyOnRead,read_60_disablecopyonread_adam_conv2d_bias_v"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp,read_60_disablecopyonread_adam_conv2d_bias_v^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:dc
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_61/DisableCopyOnReadDisableCopyOnRead-read_61_disablecopyonread_adam_self_attn_k0_v"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp-read_61_disablecopyonread_adam_self_attn_k0_v^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_62/DisableCopyOnReadDisableCopyOnRead-read_62_disablecopyonread_adam_self_attn_k1_v"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp-read_62_disablecopyonread_adam_self_attn_k1_v^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_63/DisableCopyOnReadDisableCopyOnRead-read_63_disablecopyonread_adam_self_attn_k2_v"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp-read_63_disablecopyonread_adam_self_attn_k2_v^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_64/DisableCopyOnReadDisableCopyOnRead-read_64_disablecopyonread_adam_self_attn_k3_v"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp-read_64_disablecopyonread_adam_self_attn_k3_v^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_65/DisableCopyOnReadDisableCopyOnRead-read_65_disablecopyonread_adam_self_attn_k4_v"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp-read_65_disablecopyonread_adam_self_attn_k4_v^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_66/DisableCopyOnReadDisableCopyOnRead-read_66_disablecopyonread_adam_self_attn_q0_v"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp-read_66_disablecopyonread_adam_self_attn_q0_v^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_67/DisableCopyOnReadDisableCopyOnRead-read_67_disablecopyonread_adam_self_attn_q1_v"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp-read_67_disablecopyonread_adam_self_attn_q1_v^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_68/DisableCopyOnReadDisableCopyOnRead-read_68_disablecopyonread_adam_self_attn_q2_v"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp-read_68_disablecopyonread_adam_self_attn_q2_v^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_69/DisableCopyOnReadDisableCopyOnRead-read_69_disablecopyonread_adam_self_attn_q3_v"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp-read_69_disablecopyonread_adam_self_attn_q3_v^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_70/DisableCopyOnReadDisableCopyOnRead-read_70_disablecopyonread_adam_self_attn_q4_v"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp-read_70_disablecopyonread_adam_self_attn_q4_v^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_71/DisableCopyOnReadDisableCopyOnRead-read_71_disablecopyonread_adam_self_attn_v0_v"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp-read_71_disablecopyonread_adam_self_attn_v0_v^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_72/DisableCopyOnReadDisableCopyOnRead-read_72_disablecopyonread_adam_self_attn_v1_v"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp-read_72_disablecopyonread_adam_self_attn_v1_v^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_73/DisableCopyOnReadDisableCopyOnRead-read_73_disablecopyonread_adam_self_attn_v2_v"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp-read_73_disablecopyonread_adam_self_attn_v2_v^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_74/DisableCopyOnReadDisableCopyOnRead-read_74_disablecopyonread_adam_self_attn_v3_v"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp-read_74_disablecopyonread_adam_self_attn_v3_v^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_75/DisableCopyOnReadDisableCopyOnRead-read_75_disablecopyonread_adam_self_attn_v4_v"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp-read_75_disablecopyonread_adam_self_attn_v4_v^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:dd*
dtype0p
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ddg
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes

:dd�
Read_76/DisableCopyOnReadDisableCopyOnRead,read_76_disablecopyonread_adam_self_attn_w_v"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp,read_76_disablecopyonread_adam_self_attn_w_v^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�d*
dtype0q
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�dh
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
:	�d�
Read_77/DisableCopyOnReadDisableCopyOnRead-read_77_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp-read_77_disablecopyonread_adam_dense_kernel_v^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�**
dtype0q
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�*h
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:	�*�
Read_78/DisableCopyOnReadDisableCopyOnRead+read_78_disablecopyonread_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp+read_78_disablecopyonread_adam_dense_bias_v^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_79/DisableCopyOnReadDisableCopyOnRead/read_79_disablecopyonread_adam_dense_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp/read_79_disablecopyonread_adam_dense_1_kernel_v^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_80/DisableCopyOnReadDisableCopyOnRead-read_80_disablecopyonread_adam_dense_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp-read_80_disablecopyonread_adam_dense_1_bias_v^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
:�&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�%
value�%B�%RB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�
value�B�RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *`
dtypesV
T2R	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_162Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_163IdentityIdentity_162:output:0^NoOp*
T0*
_output_shapes
: �!
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_163Identity_163:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=R9

_output_shapes
: 

_user_specified_nameConst:3Q/
-
_user_specified_nameAdam/dense_1/bias/v:5P1
/
_user_specified_nameAdam/dense_1/kernel/v:1O-
+
_user_specified_nameAdam/dense/bias/v:3N/
-
_user_specified_nameAdam/dense/kernel/v:2M.
,
_user_specified_nameAdam/self_attn/W/v:3L/
-
_user_specified_nameAdam/self_attn/V4/v:3K/
-
_user_specified_nameAdam/self_attn/V3/v:3J/
-
_user_specified_nameAdam/self_attn/V2/v:3I/
-
_user_specified_nameAdam/self_attn/V1/v:3H/
-
_user_specified_nameAdam/self_attn/V0/v:3G/
-
_user_specified_nameAdam/self_attn/Q4/v:3F/
-
_user_specified_nameAdam/self_attn/Q3/v:3E/
-
_user_specified_nameAdam/self_attn/Q2/v:3D/
-
_user_specified_nameAdam/self_attn/Q1/v:3C/
-
_user_specified_nameAdam/self_attn/Q0/v:3B/
-
_user_specified_nameAdam/self_attn/K4/v:3A/
-
_user_specified_nameAdam/self_attn/K3/v:3@/
-
_user_specified_nameAdam/self_attn/K2/v:3?/
-
_user_specified_nameAdam/self_attn/K1/v:3>/
-
_user_specified_nameAdam/self_attn/K0/v:2=.
,
_user_specified_nameAdam/conv2d/bias/v:4<0
.
_user_specified_nameAdam/conv2d/kernel/v:3;/
-
_user_specified_nameAdam/dense_1/bias/m:5:1
/
_user_specified_nameAdam/dense_1/kernel/m:19-
+
_user_specified_nameAdam/dense/bias/m:38/
-
_user_specified_nameAdam/dense/kernel/m:27.
,
_user_specified_nameAdam/self_attn/W/m:36/
-
_user_specified_nameAdam/self_attn/V4/m:35/
-
_user_specified_nameAdam/self_attn/V3/m:34/
-
_user_specified_nameAdam/self_attn/V2/m:33/
-
_user_specified_nameAdam/self_attn/V1/m:32/
-
_user_specified_nameAdam/self_attn/V0/m:31/
-
_user_specified_nameAdam/self_attn/Q4/m:30/
-
_user_specified_nameAdam/self_attn/Q3/m:3//
-
_user_specified_nameAdam/self_attn/Q2/m:3./
-
_user_specified_nameAdam/self_attn/Q1/m:3-/
-
_user_specified_nameAdam/self_attn/Q0/m:3,/
-
_user_specified_nameAdam/self_attn/K4/m:3+/
-
_user_specified_nameAdam/self_attn/K3/m:3*/
-
_user_specified_nameAdam/self_attn/K2/m:3)/
-
_user_specified_nameAdam/self_attn/K1/m:3(/
-
_user_specified_nameAdam/self_attn/K0/m:2'.
,
_user_specified_nameAdam/conv2d/bias/m:4&0
.
_user_specified_nameAdam/conv2d/kernel/m:/%+
)
_user_specified_namefalse_negatives:/$+
)
_user_specified_namefalse_positives:.#*
(
_user_specified_nametrue_negatives:."*
(
_user_specified_nametrue_positives:1!-
+
_user_specified_namefalse_negatives_1:1 -
+
_user_specified_namefalse_positives_1:0,
*
_user_specified_nametrue_negatives_1:0,
*
_user_specified_nametrue_positives_1:%!

_user_specified_namecount:%!

_user_specified_nametotal:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:+'
%
_user_specified_nameself_attn/W:,(
&
_user_specified_nameself_attn/V4:,(
&
_user_specified_nameself_attn/V3:,(
&
_user_specified_nameself_attn/V2:,(
&
_user_specified_nameself_attn/V1:,(
&
_user_specified_nameself_attn/V0:,(
&
_user_specified_nameself_attn/Q4:,(
&
_user_specified_nameself_attn/Q3:,
(
&
_user_specified_nameself_attn/Q2:,	(
&
_user_specified_nameself_attn/Q1:,(
&
_user_specified_nameself_attn/Q0:,(
&
_user_specified_nameself_attn/K4:,(
&
_user_specified_nameself_attn/K3:,(
&
_user_specified_nameself_attn/K2:,(
&
_user_specified_nameself_attn/K1:,(
&
_user_specified_nameself_attn/K0:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
@__inference_dense_layer_call_and_return_conditional_losses_27369

inputs1
matmul_readvariableop_resource:	�*-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:���������f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
<
input_11
serving_default_input_1:0����������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:ѡ
�
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
�
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
12
13
14
15
16
17
 18
!19
"20
#21"
trackable_list_wrapper
�
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
12
13
14
15
16
17
 18
!19
"20
#21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
)trace_02�
%__inference_model_layer_call_fn_27441�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z)trace_0
�
*trace_02�
@__inference_model_layer_call_and_return_conditional_losses_27392�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z*trace_0
�B�
 __inference__wrapped_model_27159input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
+0
,1"
trackable_list_wrapper
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
'
30"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
�
6iter

7beta_1

8beta_2
	9decay
:learning_ratem�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m� m�!m�"m�#m�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�#v�"
	optimizer
,
;serving_default"
signature_map
':%d2conv2d/kernel
:d2conv2d/bias
:dd2self_attn/K0
:dd2self_attn/K1
:dd2self_attn/K2
:dd2self_attn/K3
:dd2self_attn/K4
:dd2self_attn/Q0
:dd2self_attn/Q1
:dd2self_attn/Q2
:dd2self_attn/Q3
:dd2self_attn/Q4
:dd2self_attn/V0
:dd2self_attn/V1
:dd2self_attn/V2
:dd2self_attn/V3
:dd2self_attn/V4
:	�d2self_attn/W
:	�*2dense/kernel
:2
dense/bias
 :2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
J
+0
,1
	2
33
44
55"
trackable_list_wrapper
5
<0
=1
>2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_model_layer_call_fn_27441input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_27392input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

kernel
bias
 E_jit_compiled_convolution_op"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
Qtrace_02�
'__inference_flatten_layer_call_fn_27573�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zQtrace_0
�
Rtrace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_27579�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zRtrace_0
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
K0
K1
K2
K3
K4
YK
Q0
Q1
Q2
Q3
Q4
ZQ
V0
V1
V2
V3
V4
[V
W"
_tf_keras_layer
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

 kernel
!bias"
_tf_keras_layer
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_27568input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
h	variables
i	keras_api
	jtotal
	kcount"
_tf_keras_metric
�
l	variables
m	keras_api
ntrue_positives
otrue_negatives
pfalse_positives
qfalse_negatives"
_tf_keras_metric
�
r	variables
s	keras_api
ttrue_positives
utrue_negatives
vfalse_positives
wfalse_negatives"
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
�
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
�
}trace_02�
&__inference_conv2d_layer_call_fn_27588�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
�
~trace_02�
A__inference_conv2d_layer_call_and_return_conditional_losses_27598�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling2d_layer_call_fn_27603�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27608�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�B�
'__inference_flatten_layer_call_fn_27573inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_27579inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_self_attn_layer_call_fn_27647�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_self_attn_layer_call_and_return_conditional_losses_27766�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_27775�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_27786�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_1_layer_call_fn_27795�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_27806�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
j0
k1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
:  (2total
:  (2count
<
n0
o1
p2
q3"
trackable_list_wrapper
-
l	variables"
_generic_user_object
:� (2true_positives
:� (2true_negatives
 :� (2false_positives
 :� (2false_negatives
<
t0
u1
v2
w3"
trackable_list_wrapper
-
r	variables"
_generic_user_object
:� (2true_positives
:� (2true_negatives
 :� (2false_positives
 :� (2false_negatives
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
�B�
&__inference_conv2d_layer_call_fn_27588inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_conv2d_layer_call_and_return_conditional_losses_27598inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_max_pooling2d_layer_call_fn_27603inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27608inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_self_attn_layer_call_fn_27647inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_self_attn_layer_call_and_return_conditional_losses_27766inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
%__inference_dense_layer_call_fn_27775inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_27786inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_dense_1_layer_call_fn_27795inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_1_layer_call_and_return_conditional_losses_27806inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,:*d2Adam/conv2d/kernel/m
:d2Adam/conv2d/bias/m
#:!dd2Adam/self_attn/K0/m
#:!dd2Adam/self_attn/K1/m
#:!dd2Adam/self_attn/K2/m
#:!dd2Adam/self_attn/K3/m
#:!dd2Adam/self_attn/K4/m
#:!dd2Adam/self_attn/Q0/m
#:!dd2Adam/self_attn/Q1/m
#:!dd2Adam/self_attn/Q2/m
#:!dd2Adam/self_attn/Q3/m
#:!dd2Adam/self_attn/Q4/m
#:!dd2Adam/self_attn/V0/m
#:!dd2Adam/self_attn/V1/m
#:!dd2Adam/self_attn/V2/m
#:!dd2Adam/self_attn/V3/m
#:!dd2Adam/self_attn/V4/m
#:!	�d2Adam/self_attn/W/m
$:"	�*2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*d2Adam/conv2d/kernel/v
:d2Adam/conv2d/bias/v
#:!dd2Adam/self_attn/K0/v
#:!dd2Adam/self_attn/K1/v
#:!dd2Adam/self_attn/K2/v
#:!dd2Adam/self_attn/K3/v
#:!dd2Adam/self_attn/K4/v
#:!dd2Adam/self_attn/Q0/v
#:!dd2Adam/self_attn/Q1/v
#:!dd2Adam/self_attn/Q2/v
#:!dd2Adam/self_attn/Q3/v
#:!dd2Adam/self_attn/Q4/v
#:!dd2Adam/self_attn/V0/v
#:!dd2Adam/self_attn/V1/v
#:!dd2Adam/self_attn/V2/v
#:!dd2Adam/self_attn/V3/v
#:!dd2Adam/self_attn/V4/v
#:!	�d2Adam/self_attn/W/v
$:"	�*2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v�
 __inference__wrapped_model_27159� !"#1�.
'�$
"�
input_1����������
� "3�0
.
output_1"�
output_1����������
A__inference_conv2d_layer_call_and_return_conditional_losses_27598u8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������d
� �
&__inference_conv2d_layer_call_fn_27588j8�5
.�+
)�&
inputs����������
� "*�'
unknown����������d�
B__inference_dense_1_layer_call_and_return_conditional_losses_27806c"#/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
'__inference_dense_1_layer_call_fn_27795X"#/�,
%�"
 �
inputs���������
� "!�
unknown����������
@__inference_dense_layer_call_and_return_conditional_losses_27786d !0�-
&�#
!�
inputs����������*
� ",�)
"�
tensor_0���������
� �
%__inference_dense_layer_call_fn_27775Y !0�-
&�#
!�
inputs����������*
� "!�
unknown����������
B__inference_flatten_layer_call_and_return_conditional_losses_27579d3�0
)�&
$�!
inputs���������7d
� "-�*
#� 
tensor_0����������*
� �
'__inference_flatten_layer_call_fn_27573Y3�0
)�&
$�!
inputs���������7d
� ""�
unknown����������*�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27608�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_27603�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
@__inference_model_layer_call_and_return_conditional_losses_27392y !"#1�.
'�$
"�
input_1����������
� ",�)
"�
tensor_0���������
� �
%__inference_model_layer_call_fn_27441n !"#1�.
'�$
"�
input_1����������
� "!�
unknown����������
D__inference_self_attn_layer_call_and_return_conditional_losses_27766�3�0
)�&
$�!
inputs���������7d
� "a�^
W�T
(�%

tensor_0_0���������7d
(�%

tensor_0_1���������77
� �
)__inference_self_attn_layer_call_fn_27647�3�0
)�&
$�!
inputs���������7d
� "S�P
&�#
tensor_0���������7d
&�#
tensor_1���������77�
#__inference_signature_wrapper_27568� !"#<�9
� 
2�/
-
input_1"�
input_1����������"3�0
.
output_1"�
output_1���������