՝
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
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
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
shape:	�*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/self_attn/W/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*#
shared_nameAdam/self_attn/W/v
y
&Adam/self_attn/W/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/W/v*
_output_shapes

:(*
dtype0
�
Adam/self_attn/V4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V4/v
{
'Adam/self_attn/V4/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V4/v*
_output_shapes

:*
dtype0
�
Adam/self_attn/V3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V3/v
{
'Adam/self_attn/V3/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V3/v*
_output_shapes

:*
dtype0
�
Adam/self_attn/V2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V2/v
{
'Adam/self_attn/V2/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/V2/v*
_output_shapes

:*
dtype0
�
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
�
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
�
Adam/self_attn/Q4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q4/v
{
'Adam/self_attn/Q4/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q4/v*
_output_shapes

:*
dtype0
�
Adam/self_attn/Q3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q3/v
{
'Adam/self_attn/Q3/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q3/v*
_output_shapes

:*
dtype0
�
Adam/self_attn/Q2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q2/v
{
'Adam/self_attn/Q2/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q2/v*
_output_shapes

:*
dtype0
�
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
�
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
�
Adam/self_attn/K4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K4/v
{
'Adam/self_attn/K4/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K4/v*
_output_shapes

:*
dtype0
�
Adam/self_attn/K3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K3/v
{
'Adam/self_attn/K3/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K3/v*
_output_shapes

:*
dtype0
�
Adam/self_attn/K2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K2/v
{
'Adam/self_attn/K2/v/Read/ReadVariableOpReadVariableOpAdam/self_attn/K2/v*
_output_shapes

:*
dtype0
�
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
�
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
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v
�
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
shape:	�*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/self_attn/W/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*#
shared_nameAdam/self_attn/W/m
y
&Adam/self_attn/W/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/W/m*
_output_shapes

:(*
dtype0
�
Adam/self_attn/V4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V4/m
{
'Adam/self_attn/V4/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V4/m*
_output_shapes

:*
dtype0
�
Adam/self_attn/V3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V3/m
{
'Adam/self_attn/V3/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V3/m*
_output_shapes

:*
dtype0
�
Adam/self_attn/V2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/V2/m
{
'Adam/self_attn/V2/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/V2/m*
_output_shapes

:*
dtype0
�
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
�
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
�
Adam/self_attn/Q4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q4/m
{
'Adam/self_attn/Q4/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q4/m*
_output_shapes

:*
dtype0
�
Adam/self_attn/Q3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q3/m
{
'Adam/self_attn/Q3/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q3/m*
_output_shapes

:*
dtype0
�
Adam/self_attn/Q2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/Q2/m
{
'Adam/self_attn/Q2/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/Q2/m*
_output_shapes

:*
dtype0
�
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
�
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
�
Adam/self_attn/K4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K4/m
{
'Adam/self_attn/K4/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K4/m*
_output_shapes

:*
dtype0
�
Adam/self_attn/K3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K3/m
{
'Adam/self_attn/K3/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K3/m*
_output_shapes

:*
dtype0
�
Adam/self_attn/K2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/self_attn/K2/m
{
'Adam/self_attn/K2/m/Read/ReadVariableOpReadVariableOpAdam/self_attn/K2/m*
_output_shapes

:*
dtype0
�
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
�
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
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:*
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
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
r
self_attn/WVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_nameself_attn/W
k
self_attn/W/Read/ReadVariableOpReadVariableOpself_attn/W*
_output_shapes

:(*
dtype0
t
self_attn/V4VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/V4
m
 self_attn/V4/Read/ReadVariableOpReadVariableOpself_attn/V4*
_output_shapes

:*
dtype0
t
self_attn/V3VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/V3
m
 self_attn/V3/Read/ReadVariableOpReadVariableOpself_attn/V3*
_output_shapes

:*
dtype0
t
self_attn/V2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/V2
m
 self_attn/V2/Read/ReadVariableOpReadVariableOpself_attn/V2*
_output_shapes

:*
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
self_attn/Q4VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/Q4
m
 self_attn/Q4/Read/ReadVariableOpReadVariableOpself_attn/Q4*
_output_shapes

:*
dtype0
t
self_attn/Q3VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/Q3
m
 self_attn/Q3/Read/ReadVariableOpReadVariableOpself_attn/Q3*
_output_shapes

:*
dtype0
t
self_attn/Q2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/Q2
m
 self_attn/Q2/Read/ReadVariableOpReadVariableOpself_attn/Q2*
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
self_attn/K4VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/K4
m
 self_attn/K4/Read/ReadVariableOpReadVariableOpself_attn/K4*
_output_shapes

:*
dtype0
t
self_attn/K3VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/K3
m
 self_attn/K3/Read/ReadVariableOpReadVariableOpself_attn/K3*
_output_shapes

:*
dtype0
t
self_attn/K2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameself_attn/K2
m
 self_attn/K2/Read/ReadVariableOpReadVariableOpself_attn/K2*
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
!__inference__traced_restore_28566��
�
�
#__inference_signature_wrapper_27568
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:(

unknown_17:	�

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
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:(
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
.:���������7:���������77*2
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
:���������7u

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
7:���������7: : : : : : : : : : : : : : : : 22
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
:���������7
 
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
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������7:S O
+
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_27441
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:(

unknown_17:	�

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
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
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
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
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
�M
�
@__inference_model_layer_call_and_return_conditional_losses_27392
input_1&
conv2d_27188:
conv2d_27190:!
self_attn_27318:!
self_attn_27320:!
self_attn_27322:!
self_attn_27324:!
self_attn_27326:!
self_attn_27328:!
self_attn_27330:!
self_attn_27332:!
self_attn_27334:!
self_attn_27336:!
self_attn_27338:!
self_attn_27340:!
self_attn_27342:!
self_attn_27344:!
self_attn_27346:!
self_attn_27348:(
dense_27370:	�
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
:����������*$
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
:���������7* 
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
valueB"����7      �
ReshapeReshape&max_pooling2d/PartitionedCall:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:���������7�
Cast/xConst*
_output_shapes

:7*
dtype0*�
value�B�7"�                                      �?      �?      �?      �?�	�T��?,ˋˮ��?���z�?b�!�MbP?��(J�?�����?���$���?l������?F�����?��=#�m�?gX�͇z�?a-�Mb`?rSW&�ڿzbw��\�?��e�\��?G/B����?[նm8�?4������?�g��#��?���Qr�h?�兾�￺	/���?�\5ZP��?Y,����?��ݹ7�kg+�:��?�r
e{y�?d���Jbp?�$��������Ty�?x���r��?��	9���?3�������Kt��?<d��ޖ�?����zt?�Jkp�'�?P}[(�?X�(���?&� ����?������ѿZA���?�^�-���?9��k�x?�"x	���?[H<&i�?;�;BB��?[BZ@���?	
m��?�Fin��?a�A��?������|? ٞ��?���R�y�?��E���?�c�����?{�(�Ҩ�?�����?DJu�?� �^Bb�?�/c���¿e�q�kK�?�U%����?��8���?�/6&`�?@�]��?��j�G�?��>�n�?k���'��⒖:��?)�D���?������?SO���h��	�T��?,ˋˮ��?���z�?k���꿌�(J�?�����?���$���?�.v���8c-Lń�?+��Cn�?,u�;��?�/�A� r?a���?�G�}��?y(����?�e���+��U�C��?��<�u��?���N��?�ek� �?�y;��0�?%�ŝ��?��i��?ŁH��?K��w��?<�ڗ�?��Q���?�&��	�?_L*h��?��.��? ��N��?E^|2��?�D�͈�?o��|���?��s�ʫ�?��,욀�?W�{��?��tٯ�?a��{2��?���q(��?�m,�z��?"���� �?ubl��?�]O迧��O��?7�^>��?|�'��?� _mҿ�B�ǁ��?/d���d�?�W� b�?t/�~%��3_�z板�&��]��?�@�����?+�B����/׷��?d�&hħ�?���;h�?�X�F�ѿ�l���}�������?�����?'h�����)�?E�p�p��?��RVn�?p$]�P!�?z%O�Ϳ�Ӝĥ{�?d�BE���?τ�(-/�?W8H�?]˽<�,�?&�e�ot�?X��w��?�E4�ưԿ�K%�l�?F0�y���?�<]��6�?F�����?��=#�m�?gX�͇z�??�d9�?rSW&�ڿzbw��\�?��e�\��?�װ���?�r�?i��?G�.bЮ�?�R����?Z7w����ɞ��'�'�&}L�?bvP�1��?��n�� ��ת�3��?wK����?q�>곆�?ڬ�ح��p��K ����I�:�?�z���?}$�<�"/X-���?B�^.�?{�=�ǌ�?r�����/0"R��dxmF(�?�R�S���?y�쿘���d��?��V'
m�?�)#ڒ�?�`
��%�?�ѐ����YFk`3�?�Q����?�����������&�?w����?�b��ꘙ?�����?}�����鿡�}�T�?����p��?�%���f�?�����~�?���t�?S������?���&���?p���k��謪��?Ș�3;��?0�尡��?�$$1Z�?$1Y� �?�v/��?��Y�f�ҿ�f�(�쿣L6��?o�p���?�E;�V�?��]#rp�?�t)�ϯ�?�3���? %XѪ��LpWw�&�U���?�Z����?�ɦ }<��0Hָ��?��
M�?���G��?HN1X���@���&k]��?~H�5���?=����[նm8�?3������?�g��#��?RZP��?�兾�￺	/���?�\5ZP��?��@���ٿ.��J�?�ø���?���)��? *�ÑE�?$�VG��￢X1@�y�?X/f��?feB�I��?2-�97㭿:����!�?��ٔ�a�?��]0���?�˹��ￛΛ�"`�?�j�Y���?8bA(G��?���1Ŀ�\���?k��J��?x_���0����,o��e��E�?�P4���?�}8�>��?tL��Zп��>�W�?���g�?��Q�|'��^���+�?vJ��C��?�ˌHXgۿb�~;sֿ�
9�	��?�=\��?��P���_�t�����]W�?G)"����?��������CARܿ���9���?�O��m�?�9;a��Y,Ҵ>��tD����?*C81���?�Hݗ�A.�j���-��$�?�K5���?�! �E~�?7�}��#��kQ(���?�xȩd��?��G���?����V��9�b5)��??Z��s�?��N����?�ۄ�O鿂�垷�?o��	��?�li��?γ-.�EiQ�U�?�m(#���?������?��4b�:�~�{�ژ�?�jkQ���? ����?��ݹ7�kg+�:��?�r
e{y�?�!h}�W��$��������Ty�?x���r��?��uc�MĿ���zS/�l��Ђ�?q kOr��?߬`�H��d-j0�d�3K��Y�?��4���?�L�$T��������C��L��?�ݴ�g�?�U�\�ٿǊ�n`߿�aL8�?�u����?Q���%�:;Q��������?��R�[�?�as�|��?S;���ٿH5W?�??~P{m��?A��t �?�(E1�s�a0"��B�?���N��?D��d���?��b|W�ӿ� �¹��?F��H��?�=�:�?�@�=�G�%F��y��?67�?�??�:p��?k=XT[�ʿ-?qv��?������?��<s��?��]Q���n"R�i�?	?T�/��?�Iծͨۿ��Y+���K�Iv��?���U��?����|��?R�7_��1� ���?��q��?�?UP6��4jPC:_��uc�7���?(�9���?�O�̊���=����5+;>ʍ�?���T
��?�W�|俀@NXUf�?$�!-Cb�?,�r����?�g�H$��"v@p� &���?ê[N��?F93��<�?c|'���?OU}<�?��j�*��?�����п3�������Kt��?<d��ޖ�?���o ��?�Jkp�'�?P}[(�?X�(���?�P�t�r�?�"�F����ۀ�K>�?
�QJ��?b�|(���?�\��0�?�D����?/h�>Y��?Ǥ$t��?�$��BE�V��Y���?���;���?k�����Ŀ�j7Y-��?c�q�,��?: J���?�x�p�V�?7�T���e�AT-�?���n��?�X蔒b���2t?o��?v�Ӓ��?�mK=��?��E����p2�|����R�s�?t1��r��?'�Lƴ�꿋�%ogO�?<~�yYr�?��f��?U
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes

:7^
addAddV2Reshape:output:0Cast:y:0*
T0*+
_output_shapes
:���������7�
!self_attn/StatefulPartitionedCallStatefulPartitionedCalladd:z:0self_attn_27318self_attn_27320self_attn_27322self_attn_27324self_attn_27326self_attn_27328self_attn_27330self_attn_27332self_attn_27334self_attn_27336self_attn_27338self_attn_27340self_attn_27342self_attn_27344self_attn_27346self_attn_27348*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������7:���������77*2
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
:����������* 
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
unknown:	�
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
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name27771:%!

_user_specified_name27769:P L
(
_output_shapes
:����������
 
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
:����������* 
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
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������7:S O
+
_output_shapes
:���������7
 
_user_specified_nameinputs
�

�
A__inference_conv2d_layer_call_and_return_conditional_losses_27598

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
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
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
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
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:����������: : 20
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
:����������
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_27588

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
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
:����������<
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
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������7:S O
+
_output_shapes
:���������7
 
_user_specified_nameinputs
��
�

D__inference_self_attn_layer_call_and_return_conditional_losses_27317

inputs0
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:2
 matmul_2_readvariableop_resource:2
 matmul_3_readvariableop_resource:2
 matmul_4_readvariableop_resource:2
 matmul_5_readvariableop_resource:2
 matmul_6_readvariableop_resource:2
 matmul_7_readvariableop_resource:2
 matmul_8_readvariableop_resource:2
 matmul_9_readvariableop_resource:3
!matmul_10_readvariableop_resource:3
!matmul_11_readvariableop_resource:3
!matmul_12_readvariableop_resource:3
!matmul_13_readvariableop_resource:3
!matmul_14_readvariableop_resource:3
!matmul_25_readvariableop_resource:(
identity

identity_1��matmul/ReadVariableOp�matmul_1/ReadVariableOp�matmul_10/ReadVariableOp�matmul_11/ReadVariableOp�matmul_12/ReadVariableOp�matmul_13/ReadVariableOp�matmul_14/ReadVariableOp�matmul_2/ReadVariableOp�matmul_25/ReadVariableOp�matmul_3/ReadVariableOp�matmul_4/ReadVariableOp�matmul_5/ReadVariableOp�matmul_6/ReadVariableOp�matmul_7/ReadVariableOp�matmul_8/ReadVariableOp�matmul_9/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0t
matmulBatchMatMulV2inputsmatmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_1BatchMatMulV2inputsmatmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_2/ReadVariableOpReadVariableOp matmul_2_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_2BatchMatMulV2inputsmatmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_3/ReadVariableOpReadVariableOp matmul_3_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_3BatchMatMulV2inputsmatmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_4/ReadVariableOpReadVariableOp matmul_4_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_4BatchMatMulV2inputsmatmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_5/ReadVariableOpReadVariableOp matmul_5_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_5BatchMatMulV2inputsmatmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_6/ReadVariableOpReadVariableOp matmul_6_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_6BatchMatMulV2inputsmatmul_6/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_7/ReadVariableOpReadVariableOp matmul_7_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_7BatchMatMulV2inputsmatmul_7/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_8/ReadVariableOpReadVariableOp matmul_8_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_8BatchMatMulV2inputsmatmul_8/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_9/ReadVariableOpReadVariableOp matmul_9_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_9BatchMatMulV2inputsmatmul_9/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_10/ReadVariableOpReadVariableOp!matmul_10_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_10BatchMatMulV2inputs matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_11/ReadVariableOpReadVariableOp!matmul_11_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_11BatchMatMulV2inputs matmul_11/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_12/ReadVariableOpReadVariableOp!matmul_12_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_12BatchMatMulV2inputs matmul_12/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_13/ReadVariableOpReadVariableOp!matmul_13_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_13BatchMatMulV2inputs matmul_13/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_14/ReadVariableOpReadVariableOp!matmul_14_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_14BatchMatMulV2inputs matmul_14/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�_
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
:���������7r
	matmul_15BatchMatMulV2matmul_5:output:0transpose:y:0*
T0*+
_output_shapes
:���������77N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@p
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
:���������7M
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
:���������7t
	matmul_17BatchMatMulV2matmul_6:output:0transpose_1:y:0*
T0*+
_output_shapes
:���������77P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
:���������7t
	matmul_19BatchMatMulV2matmul_7:output:0transpose_2:y:0*
T0*+
_output_shapes
:���������77P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
:���������7t
	matmul_21BatchMatMulV2matmul_8:output:0transpose_3:y:0*
T0*+
_output_shapes
:���������77P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
:���������7t
	matmul_23BatchMatMulV2matmul_9:output:0transpose_4:y:0*
T0*+
_output_shapes
:���������77P
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
T0*+
_output_shapes
:���������7(z
matmul_25/ReadVariableOpReadVariableOp!matmul_25_readvariableop_resource*
_output_shapes

:(*
dtype0�
	matmul_25BatchMatMulV2concat_5:output:0 matmul_25/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7`
add_5AddV2matmul_25:output:0inputs*
T0*+
_output_shapes
:���������7\
IdentityIdentity	add_5:z:0^NoOp*
T0*+
_output_shapes
:���������7f

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
7:���������7: : : : : : : : : : : : : : : : 2.
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
:���������7
 
_user_specified_nameinputs
��
�0
!__inference__traced_restore_28566
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:1
assignvariableop_2_self_attn_k0:1
assignvariableop_3_self_attn_k1:1
assignvariableop_4_self_attn_k2:1
assignvariableop_5_self_attn_k3:1
assignvariableop_6_self_attn_k4:1
assignvariableop_7_self_attn_q0:1
assignvariableop_8_self_attn_q1:1
assignvariableop_9_self_attn_q2:2
 assignvariableop_10_self_attn_q3:2
 assignvariableop_11_self_attn_q4:2
 assignvariableop_12_self_attn_v0:2
 assignvariableop_13_self_attn_v1:2
 assignvariableop_14_self_attn_v2:2
 assignvariableop_15_self_attn_v3:2
 assignvariableop_16_self_attn_v4:1
assignvariableop_17_self_attn_w:(3
 assignvariableop_18_dense_kernel:	�,
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
(assignvariableop_37_adam_conv2d_kernel_m:4
&assignvariableop_38_adam_conv2d_bias_m:9
'assignvariableop_39_adam_self_attn_k0_m:9
'assignvariableop_40_adam_self_attn_k1_m:9
'assignvariableop_41_adam_self_attn_k2_m:9
'assignvariableop_42_adam_self_attn_k3_m:9
'assignvariableop_43_adam_self_attn_k4_m:9
'assignvariableop_44_adam_self_attn_q0_m:9
'assignvariableop_45_adam_self_attn_q1_m:9
'assignvariableop_46_adam_self_attn_q2_m:9
'assignvariableop_47_adam_self_attn_q3_m:9
'assignvariableop_48_adam_self_attn_q4_m:9
'assignvariableop_49_adam_self_attn_v0_m:9
'assignvariableop_50_adam_self_attn_v1_m:9
'assignvariableop_51_adam_self_attn_v2_m:9
'assignvariableop_52_adam_self_attn_v3_m:9
'assignvariableop_53_adam_self_attn_v4_m:8
&assignvariableop_54_adam_self_attn_w_m:(:
'assignvariableop_55_adam_dense_kernel_m:	�3
%assignvariableop_56_adam_dense_bias_m:;
)assignvariableop_57_adam_dense_1_kernel_m:5
'assignvariableop_58_adam_dense_1_bias_m:B
(assignvariableop_59_adam_conv2d_kernel_v:4
&assignvariableop_60_adam_conv2d_bias_v:9
'assignvariableop_61_adam_self_attn_k0_v:9
'assignvariableop_62_adam_self_attn_k1_v:9
'assignvariableop_63_adam_self_attn_k2_v:9
'assignvariableop_64_adam_self_attn_k3_v:9
'assignvariableop_65_adam_self_attn_k4_v:9
'assignvariableop_66_adam_self_attn_q0_v:9
'assignvariableop_67_adam_self_attn_q1_v:9
'assignvariableop_68_adam_self_attn_q2_v:9
'assignvariableop_69_adam_self_attn_q3_v:9
'assignvariableop_70_adam_self_attn_q4_v:9
'assignvariableop_71_adam_self_attn_v0_v:9
'assignvariableop_72_adam_self_attn_v1_v:9
'assignvariableop_73_adam_self_attn_v2_v:9
'assignvariableop_74_adam_self_attn_v3_v:9
'assignvariableop_75_adam_self_attn_v4_v:8
&assignvariableop_76_adam_self_attn_w_v:(:
'assignvariableop_77_adam_dense_kernel_v:	�3
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
��
�
 __inference__wrapped_model_27159
input_1E
+model_conv2d_conv2d_readvariableop_resource::
,model_conv2d_biasadd_readvariableop_resource:@
.model_self_attn_matmul_readvariableop_resource:B
0model_self_attn_matmul_1_readvariableop_resource:B
0model_self_attn_matmul_2_readvariableop_resource:B
0model_self_attn_matmul_3_readvariableop_resource:B
0model_self_attn_matmul_4_readvariableop_resource:B
0model_self_attn_matmul_5_readvariableop_resource:B
0model_self_attn_matmul_6_readvariableop_resource:B
0model_self_attn_matmul_7_readvariableop_resource:B
0model_self_attn_matmul_8_readvariableop_resource:B
0model_self_attn_matmul_9_readvariableop_resource:C
1model_self_attn_matmul_10_readvariableop_resource:C
1model_self_attn_matmul_11_readvariableop_resource:C
1model_self_attn_matmul_12_readvariableop_resource:C
1model_self_attn_matmul_13_readvariableop_resource:C
1model_self_attn_matmul_14_readvariableop_resource:C
1model_self_attn_matmul_25_readvariableop_resource:(=
*model_dense_matmul_readvariableop_resource:	�9
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
:*
dtype0�
model/conv2d/Conv2DConv2Dmodel/ExpandDims:output:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
model/max_pooling2d/MaxPoolMaxPoolmodel/conv2d/BiasAdd:output:0*/
_output_shapes
:���������7*
ksize
*
paddingVALID*
strides
h
model/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����7      �
model/ReshapeReshape$model/max_pooling2d/MaxPool:output:0model/Reshape/shape:output:0*
T0*+
_output_shapes
:���������7�
model/Cast/xConst*
_output_shapes

:7*
dtype0*�
value�B�7"�                                      �?      �?      �?      �?�	�T��?,ˋˮ��?���z�?b�!�MbP?��(J�?�����?���$���?l������?F�����?��=#�m�?gX�͇z�?a-�Mb`?rSW&�ڿzbw��\�?��e�\��?G/B����?[նm8�?4������?�g��#��?���Qr�h?�兾�￺	/���?�\5ZP��?Y,����?��ݹ7�kg+�:��?�r
e{y�?d���Jbp?�$��������Ty�?x���r��?��	9���?3�������Kt��?<d��ޖ�?����zt?�Jkp�'�?P}[(�?X�(���?&� ����?������ѿZA���?�^�-���?9��k�x?�"x	���?[H<&i�?;�;BB��?[BZ@���?	
m��?�Fin��?a�A��?������|? ٞ��?���R�y�?��E���?�c�����?{�(�Ҩ�?�����?DJu�?� �^Bb�?�/c���¿e�q�kK�?�U%����?��8���?�/6&`�?@�]��?��j�G�?��>�n�?k���'��⒖:��?)�D���?������?SO���h��	�T��?,ˋˮ��?���z�?k���꿌�(J�?�����?���$���?�.v���8c-Lń�?+��Cn�?,u�;��?�/�A� r?a���?�G�}��?y(����?�e���+��U�C��?��<�u��?���N��?�ek� �?�y;��0�?%�ŝ��?��i��?ŁH��?K��w��?<�ڗ�?��Q���?�&��	�?_L*h��?��.��? ��N��?E^|2��?�D�͈�?o��|���?��s�ʫ�?��,욀�?W�{��?��tٯ�?a��{2��?���q(��?�m,�z��?"���� �?ubl��?�]O迧��O��?7�^>��?|�'��?� _mҿ�B�ǁ��?/d���d�?�W� b�?t/�~%��3_�z板�&��]��?�@�����?+�B����/׷��?d�&hħ�?���;h�?�X�F�ѿ�l���}�������?�����?'h�����)�?E�p�p��?��RVn�?p$]�P!�?z%O�Ϳ�Ӝĥ{�?d�BE���?τ�(-/�?W8H�?]˽<�,�?&�e�ot�?X��w��?�E4�ưԿ�K%�l�?F0�y���?�<]��6�?F�����?��=#�m�?gX�͇z�??�d9�?rSW&�ڿzbw��\�?��e�\��?�װ���?�r�?i��?G�.bЮ�?�R����?Z7w����ɞ��'�'�&}L�?bvP�1��?��n�� ��ת�3��?wK����?q�>곆�?ڬ�ح��p��K ����I�:�?�z���?}$�<�"/X-���?B�^.�?{�=�ǌ�?r�����/0"R��dxmF(�?�R�S���?y�쿘���d��?��V'
m�?�)#ڒ�?�`
��%�?�ѐ����YFk`3�?�Q����?�����������&�?w����?�b��ꘙ?�����?}�����鿡�}�T�?����p��?�%���f�?�����~�?���t�?S������?���&���?p���k��謪��?Ș�3;��?0�尡��?�$$1Z�?$1Y� �?�v/��?��Y�f�ҿ�f�(�쿣L6��?o�p���?�E;�V�?��]#rp�?�t)�ϯ�?�3���? %XѪ��LpWw�&�U���?�Z����?�ɦ }<��0Hָ��?��
M�?���G��?HN1X���@���&k]��?~H�5���?=����[նm8�?3������?�g��#��?RZP��?�兾�￺	/���?�\5ZP��?��@���ٿ.��J�?�ø���?���)��? *�ÑE�?$�VG��￢X1@�y�?X/f��?feB�I��?2-�97㭿:����!�?��ٔ�a�?��]0���?�˹��ￛΛ�"`�?�j�Y���?8bA(G��?���1Ŀ�\���?k��J��?x_���0����,o��e��E�?�P4���?�}8�>��?tL��Zп��>�W�?���g�?��Q�|'��^���+�?vJ��C��?�ˌHXgۿb�~;sֿ�
9�	��?�=\��?��P���_�t�����]W�?G)"����?��������CARܿ���9���?�O��m�?�9;a��Y,Ҵ>��tD����?*C81���?�Hݗ�A.�j���-��$�?�K5���?�! �E~�?7�}��#��kQ(���?�xȩd��?��G���?����V��9�b5)��??Z��s�?��N����?�ۄ�O鿂�垷�?o��	��?�li��?γ-.�EiQ�U�?�m(#���?������?��4b�:�~�{�ژ�?�jkQ���? ����?��ݹ7�kg+�:��?�r
e{y�?�!h}�W��$��������Ty�?x���r��?��uc�MĿ���zS/�l��Ђ�?q kOr��?߬`�H��d-j0�d�3K��Y�?��4���?�L�$T��������C��L��?�ݴ�g�?�U�\�ٿǊ�n`߿�aL8�?�u����?Q���%�:;Q��������?��R�[�?�as�|��?S;���ٿH5W?�??~P{m��?A��t �?�(E1�s�a0"��B�?���N��?D��d���?��b|W�ӿ� �¹��?F��H��?�=�:�?�@�=�G�%F��y��?67�?�??�:p��?k=XT[�ʿ-?qv��?������?��<s��?��]Q���n"R�i�?	?T�/��?�Iծͨۿ��Y+���K�Iv��?���U��?����|��?R�7_��1� ���?��q��?�?UP6��4jPC:_��uc�7���?(�9���?�O�̊���=����5+;>ʍ�?���T
��?�W�|俀@NXUf�?$�!-Cb�?,�r����?�g�H$��"v@p� &���?ê[N��?F93��<�?c|'���?OU}<�?��j�*��?�����п3�������Kt��?<d��ޖ�?���o ��?�Jkp�'�?P}[(�?X�(���?�P�t�r�?�"�F����ۀ�K>�?
�QJ��?b�|(���?�\��0�?�D����?/h�>Y��?Ǥ$t��?�$��BE�V��Y���?���;���?k�����Ŀ�j7Y-��?c�q�,��?: J���?�x�p�V�?7�T���e�AT-�?���n��?�X蔒b���2t?o��?v�Ӓ��?�mK=��?��E����p2�|����R�s�?t1��r��?'�Lƴ�꿋�%ogO�?<~�yYr�?��f��?a

model/CastCastmodel/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes

:7p
	model/addAddV2model/Reshape:output:0model/Cast:y:0*
T0*+
_output_shapes
:���������7�
%model/self_attn/matmul/ReadVariableOpReadVariableOp.model_self_attn_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmulBatchMatMulV2model/add:z:0-model/self_attn/matmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_1/ReadVariableOpReadVariableOp0model_self_attn_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_1BatchMatMulV2model/add:z:0/model/self_attn/matmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_2/ReadVariableOpReadVariableOp0model_self_attn_matmul_2_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_2BatchMatMulV2model/add:z:0/model/self_attn/matmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_3/ReadVariableOpReadVariableOp0model_self_attn_matmul_3_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_3BatchMatMulV2model/add:z:0/model/self_attn/matmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_4/ReadVariableOpReadVariableOp0model_self_attn_matmul_4_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_4BatchMatMulV2model/add:z:0/model/self_attn/matmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_5/ReadVariableOpReadVariableOp0model_self_attn_matmul_5_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_5BatchMatMulV2model/add:z:0/model/self_attn/matmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_6/ReadVariableOpReadVariableOp0model_self_attn_matmul_6_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_6BatchMatMulV2model/add:z:0/model/self_attn/matmul_6/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_7/ReadVariableOpReadVariableOp0model_self_attn_matmul_7_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_7BatchMatMulV2model/add:z:0/model/self_attn/matmul_7/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_8/ReadVariableOpReadVariableOp0model_self_attn_matmul_8_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_8BatchMatMulV2model/add:z:0/model/self_attn/matmul_8/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
'model/self_attn/matmul_9/ReadVariableOpReadVariableOp0model_self_attn_matmul_9_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_9BatchMatMulV2model/add:z:0/model/self_attn/matmul_9/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
(model/self_attn/matmul_10/ReadVariableOpReadVariableOp1model_self_attn_matmul_10_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_10BatchMatMulV2model/add:z:00model/self_attn/matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
(model/self_attn/matmul_11/ReadVariableOpReadVariableOp1model_self_attn_matmul_11_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_11BatchMatMulV2model/add:z:00model/self_attn/matmul_11/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
(model/self_attn/matmul_12/ReadVariableOpReadVariableOp1model_self_attn_matmul_12_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_12BatchMatMulV2model/add:z:00model/self_attn/matmul_12/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
(model/self_attn/matmul_13/ReadVariableOpReadVariableOp1model_self_attn_matmul_13_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_13BatchMatMulV2model/add:z:00model/self_attn/matmul_13/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
(model/self_attn/matmul_14/ReadVariableOpReadVariableOp1model_self_attn_matmul_14_readvariableop_resource*
_output_shapes

:*
dtype0�
model/self_attn/matmul_14BatchMatMulV2model/add:z:00model/self_attn/matmul_14/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�_
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
:���������7�
model/self_attn/matmul_15BatchMatMulV2!model/self_attn/matmul_5:output:0model/self_attn/transpose:y:0*
T0*+
_output_shapes
:���������77^
model/self_attn/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@�
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
:���������7]
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
:���������7�
model/self_attn/matmul_17BatchMatMulV2!model/self_attn/matmul_6:output:0model/self_attn/transpose_1:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@�
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
:���������7_
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
:���������7�
model/self_attn/matmul_19BatchMatMulV2!model/self_attn/matmul_7:output:0model/self_attn/transpose_2:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@�
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
:���������7_
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
:���������7�
model/self_attn/matmul_21BatchMatMulV2!model/self_attn/matmul_8:output:0model/self_attn/transpose_3:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@�
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
:���������7_
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
:���������7�
model/self_attn/matmul_23BatchMatMulV2!model/self_attn/matmul_9:output:0model/self_attn/transpose_4:y:0*
T0*+
_output_shapes
:���������77`
model/self_attn/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@�
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
:���������7_
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
T0*+
_output_shapes
:���������7(�
(model/self_attn/matmul_25/ReadVariableOpReadVariableOp1model_self_attn_matmul_25_readvariableop_resource*
_output_shapes

:(*
dtype0�
model/self_attn/matmul_25BatchMatMulV2!model/self_attn/concat_5:output:00model/self_attn/matmul_25/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�
model/self_attn/add_5AddV2"model/self_attn/matmul_25:output:0model/add:z:0*
T0*+
_output_shapes
:���������7d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
model/flatten/ReshapeReshapemodel/self_attn/add_5:z:0model/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
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
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:2
 matmul_2_readvariableop_resource:2
 matmul_3_readvariableop_resource:2
 matmul_4_readvariableop_resource:2
 matmul_5_readvariableop_resource:2
 matmul_6_readvariableop_resource:2
 matmul_7_readvariableop_resource:2
 matmul_8_readvariableop_resource:2
 matmul_9_readvariableop_resource:3
!matmul_10_readvariableop_resource:3
!matmul_11_readvariableop_resource:3
!matmul_12_readvariableop_resource:3
!matmul_13_readvariableop_resource:3
!matmul_14_readvariableop_resource:3
!matmul_25_readvariableop_resource:(
identity

identity_1��matmul/ReadVariableOp�matmul_1/ReadVariableOp�matmul_10/ReadVariableOp�matmul_11/ReadVariableOp�matmul_12/ReadVariableOp�matmul_13/ReadVariableOp�matmul_14/ReadVariableOp�matmul_2/ReadVariableOp�matmul_25/ReadVariableOp�matmul_3/ReadVariableOp�matmul_4/ReadVariableOp�matmul_5/ReadVariableOp�matmul_6/ReadVariableOp�matmul_7/ReadVariableOp�matmul_8/ReadVariableOp�matmul_9/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0t
matmulBatchMatMulV2inputsmatmul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_1BatchMatMulV2inputsmatmul_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_2/ReadVariableOpReadVariableOp matmul_2_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_2BatchMatMulV2inputsmatmul_2/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_3/ReadVariableOpReadVariableOp matmul_3_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_3BatchMatMulV2inputsmatmul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_4/ReadVariableOpReadVariableOp matmul_4_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_4BatchMatMulV2inputsmatmul_4/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_5/ReadVariableOpReadVariableOp matmul_5_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_5BatchMatMulV2inputsmatmul_5/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_6/ReadVariableOpReadVariableOp matmul_6_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_6BatchMatMulV2inputsmatmul_6/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_7/ReadVariableOpReadVariableOp matmul_7_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_7BatchMatMulV2inputsmatmul_7/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_8/ReadVariableOpReadVariableOp matmul_8_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_8BatchMatMulV2inputsmatmul_8/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7x
matmul_9/ReadVariableOpReadVariableOp matmul_9_readvariableop_resource*
_output_shapes

:*
dtype0x
matmul_9BatchMatMulV2inputsmatmul_9/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_10/ReadVariableOpReadVariableOp!matmul_10_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_10BatchMatMulV2inputs matmul_10/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_11/ReadVariableOpReadVariableOp!matmul_11_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_11BatchMatMulV2inputs matmul_11/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_12/ReadVariableOpReadVariableOp!matmul_12_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_12BatchMatMulV2inputs matmul_12/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_13/ReadVariableOpReadVariableOp!matmul_13_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_13BatchMatMulV2inputs matmul_13/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7z
matmul_14/ReadVariableOpReadVariableOp!matmul_14_readvariableop_resource*
_output_shapes

:*
dtype0z
	matmul_14BatchMatMulV2inputs matmul_14/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7�_
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
:���������7r
	matmul_15BatchMatMulV2matmul_5:output:0transpose:y:0*
T0*+
_output_shapes
:���������77N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@p
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
:���������7M
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
:���������7t
	matmul_17BatchMatMulV2matmul_6:output:0transpose_1:y:0*
T0*+
_output_shapes
:���������77P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
:���������7t
	matmul_19BatchMatMulV2matmul_7:output:0transpose_2:y:0*
T0*+
_output_shapes
:���������77P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
:���������7t
	matmul_21BatchMatMulV2matmul_8:output:0transpose_3:y:0*
T0*+
_output_shapes
:���������77P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
:���������7t
	matmul_23BatchMatMulV2matmul_9:output:0transpose_4:y:0*
T0*+
_output_shapes
:���������77P
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5@t
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
:���������7O
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
T0*+
_output_shapes
:���������7(z
matmul_25/ReadVariableOpReadVariableOp!matmul_25_readvariableop_resource*
_output_shapes

:(*
dtype0�
	matmul_25BatchMatMulV2concat_5:output:0 matmul_25/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������7`
add_5AddV2matmul_25:output:0inputs*
T0*+
_output_shapes
:���������7\
IdentityIdentity	add_5:z:0^NoOp*
T0*+
_output_shapes
:���������7f

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
7:���������7: : : : : : : : : : : : : : : : 2.
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
:���������7
 
_user_specified_nameinputs
��
�H
__inference__traced_save_28314
file_prefix>
$read_disablecopyonread_conv2d_kernel:2
$read_1_disablecopyonread_conv2d_bias:7
%read_2_disablecopyonread_self_attn_k0:7
%read_3_disablecopyonread_self_attn_k1:7
%read_4_disablecopyonread_self_attn_k2:7
%read_5_disablecopyonread_self_attn_k3:7
%read_6_disablecopyonread_self_attn_k4:7
%read_7_disablecopyonread_self_attn_q0:7
%read_8_disablecopyonread_self_attn_q1:7
%read_9_disablecopyonread_self_attn_q2:8
&read_10_disablecopyonread_self_attn_q3:8
&read_11_disablecopyonread_self_attn_q4:8
&read_12_disablecopyonread_self_attn_v0:8
&read_13_disablecopyonread_self_attn_v1:8
&read_14_disablecopyonread_self_attn_v2:8
&read_15_disablecopyonread_self_attn_v3:8
&read_16_disablecopyonread_self_attn_v4:7
%read_17_disablecopyonread_self_attn_w:(9
&read_18_disablecopyonread_dense_kernel:	�2
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
.read_37_disablecopyonread_adam_conv2d_kernel_m::
,read_38_disablecopyonread_adam_conv2d_bias_m:?
-read_39_disablecopyonread_adam_self_attn_k0_m:?
-read_40_disablecopyonread_adam_self_attn_k1_m:?
-read_41_disablecopyonread_adam_self_attn_k2_m:?
-read_42_disablecopyonread_adam_self_attn_k3_m:?
-read_43_disablecopyonread_adam_self_attn_k4_m:?
-read_44_disablecopyonread_adam_self_attn_q0_m:?
-read_45_disablecopyonread_adam_self_attn_q1_m:?
-read_46_disablecopyonread_adam_self_attn_q2_m:?
-read_47_disablecopyonread_adam_self_attn_q3_m:?
-read_48_disablecopyonread_adam_self_attn_q4_m:?
-read_49_disablecopyonread_adam_self_attn_v0_m:?
-read_50_disablecopyonread_adam_self_attn_v1_m:?
-read_51_disablecopyonread_adam_self_attn_v2_m:?
-read_52_disablecopyonread_adam_self_attn_v3_m:?
-read_53_disablecopyonread_adam_self_attn_v4_m:>
,read_54_disablecopyonread_adam_self_attn_w_m:(@
-read_55_disablecopyonread_adam_dense_kernel_m:	�9
+read_56_disablecopyonread_adam_dense_bias_m:A
/read_57_disablecopyonread_adam_dense_1_kernel_m:;
-read_58_disablecopyonread_adam_dense_1_bias_m:H
.read_59_disablecopyonread_adam_conv2d_kernel_v::
,read_60_disablecopyonread_adam_conv2d_bias_v:?
-read_61_disablecopyonread_adam_self_attn_k0_v:?
-read_62_disablecopyonread_adam_self_attn_k1_v:?
-read_63_disablecopyonread_adam_self_attn_k2_v:?
-read_64_disablecopyonread_adam_self_attn_k3_v:?
-read_65_disablecopyonread_adam_self_attn_k4_v:?
-read_66_disablecopyonread_adam_self_attn_q0_v:?
-read_67_disablecopyonread_adam_self_attn_q1_v:?
-read_68_disablecopyonread_adam_self_attn_q2_v:?
-read_69_disablecopyonread_adam_self_attn_q3_v:?
-read_70_disablecopyonread_adam_self_attn_q4_v:?
-read_71_disablecopyonread_adam_self_attn_v0_v:?
-read_72_disablecopyonread_adam_self_attn_v1_v:?
-read_73_disablecopyonread_adam_self_attn_v2_v:?
-read_74_disablecopyonread_adam_self_attn_v3_v:?
-read_75_disablecopyonread_adam_self_attn_v4_v:>
,read_76_disablecopyonread_adam_self_attn_w_v:(@
-read_77_disablecopyonread_adam_dense_kernel_v:	�9
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
 �
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
 �
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
 �
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
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_self_attn_k2"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_self_attn_k2^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_self_attn_k3"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_self_attn_k3^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_self_attn_k4"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_self_attn_k4^Read_6/DisableCopyOnRead"/device:CPU:0*
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
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_self_attn_q0"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_self_attn_q0^Read_7/DisableCopyOnRead"/device:CPU:0*
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

:y
Read_8/DisableCopyOnReadDisableCopyOnRead%read_8_disablecopyonread_self_attn_q1"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp%read_8_disablecopyonread_self_attn_q1^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_self_attn_q2"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_self_attn_q2^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_10/DisableCopyOnReadDisableCopyOnRead&read_10_disablecopyonread_self_attn_q3"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp&read_10_disablecopyonread_self_attn_q3^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_self_attn_q4"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_self_attn_q4^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_12/DisableCopyOnReadDisableCopyOnRead&read_12_disablecopyonread_self_attn_v0"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp&read_12_disablecopyonread_self_attn_v0^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_self_attn_v1"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_self_attn_v1^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_14/DisableCopyOnReadDisableCopyOnRead&read_14_disablecopyonread_self_attn_v2"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp&read_14_disablecopyonread_self_attn_v2^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_15/DisableCopyOnReadDisableCopyOnRead&read_15_disablecopyonread_self_attn_v3"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp&read_15_disablecopyonread_self_attn_v3^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_16/DisableCopyOnReadDisableCopyOnRead&read_16_disablecopyonread_self_attn_v4"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp&read_16_disablecopyonread_self_attn_v4^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_self_attn_w"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_self_attn_w^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:(*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:(e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:({
Read_18/DisableCopyOnReadDisableCopyOnRead&read_18_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp&read_18_disablecopyonread_dense_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	�y
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
:*
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_38/DisableCopyOnReadDisableCopyOnRead,read_38_disablecopyonread_adam_conv2d_bias_m"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp,read_38_disablecopyonread_adam_conv2d_bias_m^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_39/DisableCopyOnReadDisableCopyOnRead-read_39_disablecopyonread_adam_self_attn_k0_m"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp-read_39_disablecopyonread_adam_self_attn_k0_m^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_40/DisableCopyOnReadDisableCopyOnRead-read_40_disablecopyonread_adam_self_attn_k1_m"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp-read_40_disablecopyonread_adam_self_attn_k1_m^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_41/DisableCopyOnReadDisableCopyOnRead-read_41_disablecopyonread_adam_self_attn_k2_m"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp-read_41_disablecopyonread_adam_self_attn_k2_m^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_42/DisableCopyOnReadDisableCopyOnRead-read_42_disablecopyonread_adam_self_attn_k3_m"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp-read_42_disablecopyonread_adam_self_attn_k3_m^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_43/DisableCopyOnReadDisableCopyOnRead-read_43_disablecopyonread_adam_self_attn_k4_m"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp-read_43_disablecopyonread_adam_self_attn_k4_m^Read_43/DisableCopyOnRead"/device:CPU:0*
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

:�
Read_44/DisableCopyOnReadDisableCopyOnRead-read_44_disablecopyonread_adam_self_attn_q0_m"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp-read_44_disablecopyonread_adam_self_attn_q0_m^Read_44/DisableCopyOnRead"/device:CPU:0*
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

:�
Read_45/DisableCopyOnReadDisableCopyOnRead-read_45_disablecopyonread_adam_self_attn_q1_m"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp-read_45_disablecopyonread_adam_self_attn_q1_m^Read_45/DisableCopyOnRead"/device:CPU:0*
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

:�
Read_46/DisableCopyOnReadDisableCopyOnRead-read_46_disablecopyonread_adam_self_attn_q2_m"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp-read_46_disablecopyonread_adam_self_attn_q2_m^Read_46/DisableCopyOnRead"/device:CPU:0*
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

:�
Read_47/DisableCopyOnReadDisableCopyOnRead-read_47_disablecopyonread_adam_self_attn_q3_m"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp-read_47_disablecopyonread_adam_self_attn_q3_m^Read_47/DisableCopyOnRead"/device:CPU:0*
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

:�
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_adam_self_attn_q4_m"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_adam_self_attn_q4_m^Read_48/DisableCopyOnRead"/device:CPU:0*
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

:�
Read_49/DisableCopyOnReadDisableCopyOnRead-read_49_disablecopyonread_adam_self_attn_v0_m"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp-read_49_disablecopyonread_adam_self_attn_v0_m^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_50/DisableCopyOnReadDisableCopyOnRead-read_50_disablecopyonread_adam_self_attn_v1_m"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp-read_50_disablecopyonread_adam_self_attn_v1_m^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_51/DisableCopyOnReadDisableCopyOnRead-read_51_disablecopyonread_adam_self_attn_v2_m"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp-read_51_disablecopyonread_adam_self_attn_v2_m^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_52/DisableCopyOnReadDisableCopyOnRead-read_52_disablecopyonread_adam_self_attn_v3_m"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp-read_52_disablecopyonread_adam_self_attn_v3_m^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_53/DisableCopyOnReadDisableCopyOnRead-read_53_disablecopyonread_adam_self_attn_v4_m"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp-read_53_disablecopyonread_adam_self_attn_v4_m^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_54/DisableCopyOnReadDisableCopyOnRead,read_54_disablecopyonread_adam_self_attn_w_m"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp,read_54_disablecopyonread_adam_self_attn_w_m^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:(*
dtype0p
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:(g
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes

:(�
Read_55/DisableCopyOnReadDisableCopyOnRead-read_55_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp-read_55_disablecopyonread_adam_dense_kernel_m^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
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
:*
dtype0x
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead,read_60_disablecopyonread_adam_conv2d_bias_v"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp,read_60_disablecopyonread_adam_conv2d_bias_v^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead-read_61_disablecopyonread_adam_self_attn_k0_v"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp-read_61_disablecopyonread_adam_self_attn_k0_v^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_62/DisableCopyOnReadDisableCopyOnRead-read_62_disablecopyonread_adam_self_attn_k1_v"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp-read_62_disablecopyonread_adam_self_attn_k1_v^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_63/DisableCopyOnReadDisableCopyOnRead-read_63_disablecopyonread_adam_self_attn_k2_v"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp-read_63_disablecopyonread_adam_self_attn_k2_v^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_64/DisableCopyOnReadDisableCopyOnRead-read_64_disablecopyonread_adam_self_attn_k3_v"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp-read_64_disablecopyonread_adam_self_attn_k3_v^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_65/DisableCopyOnReadDisableCopyOnRead-read_65_disablecopyonread_adam_self_attn_k4_v"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp-read_65_disablecopyonread_adam_self_attn_k4_v^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_66/DisableCopyOnReadDisableCopyOnRead-read_66_disablecopyonread_adam_self_attn_q0_v"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp-read_66_disablecopyonread_adam_self_attn_q0_v^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_67/DisableCopyOnReadDisableCopyOnRead-read_67_disablecopyonread_adam_self_attn_q1_v"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp-read_67_disablecopyonread_adam_self_attn_q1_v^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_68/DisableCopyOnReadDisableCopyOnRead-read_68_disablecopyonread_adam_self_attn_q2_v"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp-read_68_disablecopyonread_adam_self_attn_q2_v^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_69/DisableCopyOnReadDisableCopyOnRead-read_69_disablecopyonread_adam_self_attn_q3_v"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp-read_69_disablecopyonread_adam_self_attn_q3_v^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_70/DisableCopyOnReadDisableCopyOnRead-read_70_disablecopyonread_adam_self_attn_q4_v"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp-read_70_disablecopyonread_adam_self_attn_q4_v^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_71/DisableCopyOnReadDisableCopyOnRead-read_71_disablecopyonread_adam_self_attn_v0_v"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp-read_71_disablecopyonread_adam_self_attn_v0_v^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_72/DisableCopyOnReadDisableCopyOnRead-read_72_disablecopyonread_adam_self_attn_v1_v"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp-read_72_disablecopyonread_adam_self_attn_v1_v^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_73/DisableCopyOnReadDisableCopyOnRead-read_73_disablecopyonread_adam_self_attn_v2_v"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp-read_73_disablecopyonread_adam_self_attn_v2_v^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_74/DisableCopyOnReadDisableCopyOnRead-read_74_disablecopyonread_adam_self_attn_v3_v"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp-read_74_disablecopyonread_adam_self_attn_v3_v^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_75/DisableCopyOnReadDisableCopyOnRead-read_75_disablecopyonread_adam_self_attn_v4_v"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp-read_75_disablecopyonread_adam_self_attn_v4_v^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_76/DisableCopyOnReadDisableCopyOnRead,read_76_disablecopyonread_adam_self_attn_w_v"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp,read_76_disablecopyonread_adam_self_attn_w_v^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:(*
dtype0p
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:(g
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes

:(�
Read_77/DisableCopyOnReadDisableCopyOnRead-read_77_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp-read_77_disablecopyonread_adam_dense_kernel_v^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
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
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:����������: : 20
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
:����������
 
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
StatefulPartitionedCall:0���������tensorflow/serving/predict:Ρ
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
':%2conv2d/kernel
:2conv2d/bias
:2self_attn/K0
:2self_attn/K1
:2self_attn/K2
:2self_attn/K3
:2self_attn/K4
:2self_attn/Q0
:2self_attn/Q1
:2self_attn/Q2
:2self_attn/Q3
:2self_attn/Q4
:2self_attn/V0
:2self_attn/V1
:2self_attn/V2
:2self_attn/V3
:2self_attn/V4
:(2self_attn/W
:	�2dense/kernel
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
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
#:!2Adam/self_attn/K0/m
#:!2Adam/self_attn/K1/m
#:!2Adam/self_attn/K2/m
#:!2Adam/self_attn/K3/m
#:!2Adam/self_attn/K4/m
#:!2Adam/self_attn/Q0/m
#:!2Adam/self_attn/Q1/m
#:!2Adam/self_attn/Q2/m
#:!2Adam/self_attn/Q3/m
#:!2Adam/self_attn/Q4/m
#:!2Adam/self_attn/V0/m
#:!2Adam/self_attn/V1/m
#:!2Adam/self_attn/V2/m
#:!2Adam/self_attn/V3/m
#:!2Adam/self_attn/V4/m
": (2Adam/self_attn/W/m
$:"	�2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
#:!2Adam/self_attn/K0/v
#:!2Adam/self_attn/K1/v
#:!2Adam/self_attn/K2/v
#:!2Adam/self_attn/K3/v
#:!2Adam/self_attn/K4/v
#:!2Adam/self_attn/Q0/v
#:!2Adam/self_attn/Q1/v
#:!2Adam/self_attn/Q2/v
#:!2Adam/self_attn/Q3/v
#:!2Adam/self_attn/Q4/v
#:!2Adam/self_attn/V0/v
#:!2Adam/self_attn/V1/v
#:!2Adam/self_attn/V2/v
#:!2Adam/self_attn/V3/v
#:!2Adam/self_attn/V4/v
": (2Adam/self_attn/W/v
$:"	�2Adam/dense/kernel/v
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
tensor_0����������
� �
&__inference_conv2d_layer_call_fn_27588j8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
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
inputs����������
� ",�)
"�
tensor_0���������
� �
%__inference_dense_layer_call_fn_27775Y !0�-
&�#
!�
inputs����������
� "!�
unknown����������
B__inference_flatten_layer_call_and_return_conditional_losses_27579d3�0
)�&
$�!
inputs���������7
� "-�*
#� 
tensor_0����������
� �
'__inference_flatten_layer_call_fn_27573Y3�0
)�&
$�!
inputs���������7
� ""�
unknown�����������
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
inputs���������7
� "a�^
W�T
(�%

tensor_0_0���������7
(�%

tensor_0_1���������77
� �
)__inference_self_attn_layer_call_fn_27647�3�0
)�&
$�!
inputs���������7
� "S�P
&�#
tensor_0���������7
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