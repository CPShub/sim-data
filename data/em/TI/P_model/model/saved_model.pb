╬В
мР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
@
Softplus
features"T
activations"T"
Ttype:
2
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02unknown8Ї░
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@@*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
В
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
Ж
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:@*
dtype0
Ж
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:@*
dtype0
Ж
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
В
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
Ж
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:@*
dtype0
Ж
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:@*
dtype0
Ж
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0
ж
ConstConst*"
_output_shapes
:	*
dtype0*ф
value┌B╫	"─  А?                                      А?                                      А?                                      А?                                      А?                                      А?                                      А?                                      А?                                      А?
и
Const_1Const*"
_output_shapes
:	*
dtype0*ф
value┌B╫	"─  А?                                      А?                                          А?                              А?                                                  А?                          А?                                      А?                                          А?                                      А?

NoOpNoOp
б?
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*┌>
value╨>B═> B╞>
н
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer-13
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures

_init_input_shape

	keras_api

	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api

_init_input_shape

	keras_api
h

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
h

*kernel
+bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
h

0kernel
1bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
h

6kernel
7bias
8regularization_losses
9trainable_variables
:	variables
;	keras_api

<	keras_api
R
=regularization_losses
>trainable_variables
?	variables
@	keras_api

A	keras_api
Ж

Bbeta_1

Cbeta_2
	Ddecay
Elearning_rate
Fiterm~m$mА%mБ*mВ+mГ0mД1mЕ6mЖ7mЗvИvЙ$vК%vЛ*vМ+vН0vО1vП6vР7vС
 
F
0
1
$2
%3
*4
+5
06
17
68
79
F
0
1
$2
%3
*4
+5
06
17
68
79
н
regularization_losses
Glayer_regularization_losses
Hlayer_metrics

Ilayers
Jnon_trainable_variables
trainable_variables
Kmetrics
	variables
 
 
 
 
 
 
 
н
Llayer_regularization_losses
Mlayer_metrics
regularization_losses

Nlayers
Onon_trainable_variables
trainable_variables
Pmetrics
	variables
 
 
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н
Qlayer_regularization_losses
Rlayer_metrics
 regularization_losses

Slayers
Tnon_trainable_variables
!trainable_variables
Umetrics
"	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
н
Vlayer_regularization_losses
Wlayer_metrics
&regularization_losses

Xlayers
Ynon_trainable_variables
'trainable_variables
Zmetrics
(	variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
н
[layer_regularization_losses
\layer_metrics
,regularization_losses

]layers
^non_trainable_variables
-trainable_variables
_metrics
.	variables
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
н
`layer_regularization_losses
alayer_metrics
2regularization_losses

blayers
cnon_trainable_variables
3trainable_variables
dmetrics
4	variables
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

60
71

60
71
н
elayer_regularization_losses
flayer_metrics
8regularization_losses

glayers
hnon_trainable_variables
9trainable_variables
imetrics
:	variables
 
 
 
 
н
jlayer_regularization_losses
klayer_metrics
=regularization_losses

llayers
mnon_trainable_variables
>trainable_variables
nmetrics
?	variables
 
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
 
 
f
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
 

o0
p1
q2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	rtotal
	scount
t	variables
u	keras_api
4
	vtotal
	wcount
x	variables
y	keras_api
4
	ztotal
	{count
|	variables
}	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

r0
s1

t	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

v0
w1

x	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

z0
{1

|	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
В
serving_default_input_1Placeholder*+
_output_shapes
:         *
dtype0* 
shape:         
z
serving_default_input_2Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
Я
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2Constdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasConst_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *0
f+R)
'__inference_signature_wrapper_154777391
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
в
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpConst_2*6
Tin/
-2+	*
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
GPU 2J 8В *+
f&R$
"__inference__traced_save_154777976
ч
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasbeta_1beta_2decaylearning_rate	Adam/itertotalcounttotal_1count_1total_2count_2Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v*5
Tin.
,2**
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
GPU 2J 8В *.
f)R'
%__inference__traced_restore_154778109╡Г

╛

ў
F__inference_dense_3_layer_call_and_return_conditional_losses_154777772

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ч
V
1__inference_private_to_33_layer_call_fn_154777798
ts
unknown
identity╘
PartitionedCallPartitionedCalltsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_private_to_33_layer_call_and_return_conditional_losses_1547770042
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	:	:K G
'
_output_shapes
:         	

_user_specified_nameTs:($
"
_output_shapes
:	
Х
U
0__inference_private_to_9_layer_call_fn_154777664
ts
unknown
identity╧
PartitionedCallPartitionedCalltsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_private_to_9_layer_call_and_return_conditional_losses_1547768782
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         :	:O K
+
_output_shapes
:         

_user_specified_nameTs:($
"
_output_shapes
:	
Ы
Ц
)__inference_dense_layer_call_fn_154777701

inputs
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_1547768952
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
■
л
)__inference_model_layer_call_fn_154777251
input_1
input_2
unknown
	unknown_0:@
	unknown_1:@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:

unknown_10
identity

identity_1ИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_1547771902
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:($
"
_output_shapes
:	:($
"
_output_shapes
:	
ЕО
▓
D__inference_model_layer_call_and_return_conditional_losses_154777657
inputs_0
inputs_1
private_to_9_tensordot_b6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@@5
'dense_3_biasadd_readvariableop_resource:@8
&dense_4_matmul_readvariableop_resource:@5
'dense_4_biasadd_readvariableop_resource:
private_to_33_tensordot_b
identity

identity_1Ивdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpг
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm┴
 tf.compat.v1.transpose/transpose	Transposeinputs_0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*+
_output_shapes
:         2"
 tf.compat.v1.transpose/transposeй
tf.linalg.matmul/MatMulBatchMatMulV2$tf.compat.v1.transpose/transpose:y:0inputs_0*
T0*+
_output_shapes
:         2
tf.linalg.matmul/MatMulЛ
private_to_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"      2
private_to_9/Tensordot/axesД
private_to_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_9/Tensordot/freeМ
private_to_9/Tensordot/ShapeShape tf.linalg.matmul/MatMul:output:0*
T0*
_output_shapes
:2
private_to_9/Tensordot/ShapeО
$private_to_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$private_to_9/Tensordot/GatherV2/axisТ
private_to_9/Tensordot/GatherV2GatherV2%private_to_9/Tensordot/Shape:output:0$private_to_9/Tensordot/free:output:0-private_to_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2!
private_to_9/Tensordot/GatherV2Т
&private_to_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&private_to_9/Tensordot/GatherV2_1/axisШ
!private_to_9/Tensordot/GatherV2_1GatherV2%private_to_9/Tensordot/Shape:output:0$private_to_9/Tensordot/axes:output:0/private_to_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2#
!private_to_9/Tensordot/GatherV2_1Ж
private_to_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_9/Tensordot/Const┤
private_to_9/Tensordot/ProdProd(private_to_9/Tensordot/GatherV2:output:0%private_to_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
private_to_9/Tensordot/ProdК
private_to_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
private_to_9/Tensordot/Const_1╝
private_to_9/Tensordot/Prod_1Prod*private_to_9/Tensordot/GatherV2_1:output:0'private_to_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
private_to_9/Tensordot/Prod_1К
"private_to_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"private_to_9/Tensordot/concat/axisё
private_to_9/Tensordot/concatConcatV2$private_to_9/Tensordot/free:output:0$private_to_9/Tensordot/axes:output:0+private_to_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
private_to_9/Tensordot/concat└
private_to_9/Tensordot/stackPack$private_to_9/Tensordot/Prod:output:0&private_to_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
private_to_9/Tensordot/stack╤
 private_to_9/Tensordot/transpose	Transpose tf.linalg.matmul/MatMul:output:0&private_to_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:         2"
 private_to_9/Tensordot/transpose╙
private_to_9/Tensordot/ReshapeReshape$private_to_9/Tensordot/transpose:y:0%private_to_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2 
private_to_9/Tensordot/Reshapeб
&private_to_9/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2(
&private_to_9/Tensordot/Reshape_1/shape├
 private_to_9/Tensordot/Reshape_1Reshapeprivate_to_9_tensordot_b/private_to_9/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2"
 private_to_9/Tensordot/Reshape_1╬
private_to_9/Tensordot/MatMulMatMul'private_to_9/Tensordot/Reshape:output:0)private_to_9/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2
private_to_9/Tensordot/MatMulК
private_to_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	2 
private_to_9/Tensordot/Const_2О
$private_to_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$private_to_9/Tensordot/concat_1/axis■
private_to_9/Tensordot/concat_1ConcatV2(private_to_9/Tensordot/GatherV2:output:0'private_to_9/Tensordot/Const_2:output:0-private_to_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
private_to_9/Tensordot/concat_1└
private_to_9/TensordotReshape'private_to_9/Tensordot/MatMul:product:0(private_to_9/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:         	2
private_to_9/Tensordotp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis╢
tf.concat/concatConcatV2private_to_9/Tensordot:output:0inputs_1tf.concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
tf.concat/concatЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMultf.concat/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/BiasAddv
dense/SoftplusSoftplusdense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense/Softplusе
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOpб
dense_1/MatMulMatMuldense/Softplus:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_1/BiasAdd|
dense_1/SoftplusSoftplusdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_1/Softplusе
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpг
dense_2/MatMulMatMuldense_1/Softplus:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/MatMulд
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOpб
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/BiasAdd|
dense_2/SoftplusSoftplusdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_2/Softplusе
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_3/MatMul/ReadVariableOpг
dense_3/MatMulMatMuldense_2/Softplus:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_3/MatMulд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_3/BiasAdd|
dense_3/SoftplusSoftplusdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_3/Softplusе
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_4/MatMul/ReadVariableOpг
dense_4/MatMulMatMuldense_3/Softplus:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/MatMulд
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpб
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/BiasAddн
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,tf.__operators__.getitem/strided_slice/stack▒
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem/strided_slice/stack_1▒
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.tf.__operators__.getitem/strided_slice/stack_2Д
&tf.__operators__.getitem/strided_sliceStridedSlicedense_4/BiasAdd:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice▒
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem_1/strided_slice/stack╡
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_1/strided_slice/stack_1╡
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0tf.__operators__.getitem_1/strided_slice/stack_2О
(tf.__operators__.getitem_1/strided_sliceStridedSlicedense_4/BiasAdd:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask2*
(tf.__operators__.getitem_1/strided_sliceЖ
private_to_33/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
private_to_33/Tensordot/axesЖ
private_to_33/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_33/Tensordot/freeЭ
private_to_33/Tensordot/ShapeShape/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
:2
private_to_33/Tensordot/ShapeР
%private_to_33/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%private_to_33/Tensordot/GatherV2/axisЧ
 private_to_33/Tensordot/GatherV2GatherV2&private_to_33/Tensordot/Shape:output:0%private_to_33/Tensordot/free:output:0.private_to_33/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 private_to_33/Tensordot/GatherV2Ф
'private_to_33/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'private_to_33/Tensordot/GatherV2_1/axisЭ
"private_to_33/Tensordot/GatherV2_1GatherV2&private_to_33/Tensordot/Shape:output:0%private_to_33/Tensordot/axes:output:00private_to_33/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"private_to_33/Tensordot/GatherV2_1И
private_to_33/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_33/Tensordot/Const╕
private_to_33/Tensordot/ProdProd)private_to_33/Tensordot/GatherV2:output:0&private_to_33/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
private_to_33/Tensordot/ProdМ
private_to_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
private_to_33/Tensordot/Const_1└
private_to_33/Tensordot/Prod_1Prod+private_to_33/Tensordot/GatherV2_1:output:0(private_to_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
private_to_33/Tensordot/Prod_1М
#private_to_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#private_to_33/Tensordot/concat/axisЎ
private_to_33/Tensordot/concatConcatV2%private_to_33/Tensordot/free:output:0%private_to_33/Tensordot/axes:output:0,private_to_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
private_to_33/Tensordot/concat─
private_to_33/Tensordot/stackPack%private_to_33/Tensordot/Prod:output:0'private_to_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
private_to_33/Tensordot/stack▀
!private_to_33/Tensordot/transpose	Transpose/tf.__operators__.getitem/strided_slice:output:0'private_to_33/Tensordot/concat:output:0*
T0*'
_output_shapes
:         	2#
!private_to_33/Tensordot/transpose╫
private_to_33/Tensordot/ReshapeReshape%private_to_33/Tensordot/transpose:y:0&private_to_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2!
private_to_33/Tensordot/Reshapeг
'private_to_33/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2)
'private_to_33/Tensordot/Reshape_1/shape╟
!private_to_33/Tensordot/Reshape_1Reshapeprivate_to_33_tensordot_b0private_to_33/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2#
!private_to_33/Tensordot/Reshape_1╥
private_to_33/Tensordot/MatMulMatMul(private_to_33/Tensordot/Reshape:output:0*private_to_33/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2 
private_to_33/Tensordot/MatMulУ
private_to_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
private_to_33/Tensordot/Const_2Р
%private_to_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%private_to_33/Tensordot/concat_1/axisГ
 private_to_33/Tensordot/concat_1ConcatV2)private_to_33/Tensordot/GatherV2:output:0(private_to_33/Tensordot/Const_2:output:0.private_to_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 private_to_33/Tensordot/concat_1╚
private_to_33/TensordotReshape(private_to_33/Tensordot/MatMul:product:0)private_to_33/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         2
private_to_33/Tensordot╣
IdentityIdentity private_to_33/Tensordot:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity╩

Identity_1Identity1tf.__operators__.getitem_1/strided_slice:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1:($
"
_output_shapes
:	:($
"
_output_shapes
:	
Є
t
K__inference_private_to_9_layer_call_and_return_conditional_losses_154777692
ts
tensordot_b
identityq
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"      2
Tensordot/axesj
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/freeT
Tensordot/ShapeShapets*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackМ
Tensordot/transpose	TransposetsTensordot/concat:output:0*
T0*+
_output_shapes
:         2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЗ
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2
Tensordot/Reshape_1/shapeП
Tensordot/Reshape_1Reshapetensordot_b"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2
Tensordot/Reshape_1Ъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:         	2
	Tensordotf
IdentityIdentityTensordot:output:0*
T0*'
_output_shapes
:         	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         :	:O K
+
_output_shapes
:         

_user_specified_nameTs:($
"
_output_shapes
:	
Я
Ш
+__inference_dense_3_layer_call_fn_154777761

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_1547769462
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╫=
╝
D__inference_model_layer_call_and_return_conditional_losses_154777010

inputs
inputs_1
private_to_9_154776879!
dense_154776896:@
dense_154776898:@#
dense_1_154776913:@@
dense_1_154776915:@#
dense_2_154776930:@@
dense_2_154776932:@#
dense_3_154776947:@@
dense_3_154776949:@#
dense_4_154776963:@
dense_4_154776965:
private_to_33_154777005
identity

identity_1Ивdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallг
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm┐
 tf.compat.v1.transpose/transpose	Transposeinputs.tf.compat.v1.transpose/transpose/perm:output:0*
T0*+
_output_shapes
:         2"
 tf.compat.v1.transpose/transposeз
tf.linalg.matmul/MatMulBatchMatMulV2$tf.compat.v1.transpose/transpose:y:0inputs*
T0*+
_output_shapes
:         2
tf.linalg.matmul/MatMulЦ
private_to_9/PartitionedCallPartitionedCall tf.linalg.matmul/MatMul:output:0private_to_9_154776879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_private_to_9_layer_call_and_return_conditional_losses_1547768782
private_to_9/PartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis╝
tf.concat/concatConcatV2%private_to_9/PartitionedCall:output:0inputs_1tf.concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
tf.concat/concatб
dense/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0dense_154776896dense_154776898*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_1547768952
dense/StatefulPartitionedCall╕
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_154776913dense_1_154776915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_1547769122!
dense_1/StatefulPartitionedCall║
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_154776930dense_2_154776932*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_1547769292!
dense_2/StatefulPartitionedCall║
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_154776947dense_3_154776949*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_1547769462!
dense_3/StatefulPartitionedCall║
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_154776963dense_4_154776965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_4_layer_call_and_return_conditional_losses_1547769622!
dense_4/StatefulPartitionedCallн
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,tf.__operators__.getitem/strided_slice/stack▒
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem/strided_slice/stack_1▒
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.tf.__operators__.getitem/strided_slice/stack_2Ф
&tf.__operators__.getitem/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice▒
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem_1/strided_slice/stack╡
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_1/strided_slice/stack_1╡
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0tf.__operators__.getitem_1/strided_slice/stack_2Ю
(tf.__operators__.getitem_1/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask2*
(tf.__operators__.getitem_1/strided_sliceн
private_to_33/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0private_to_33_154777005*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_private_to_33_layer_call_and_return_conditional_losses_1547770042
private_to_33/PartitionedCallж
IdentityIdentity&private_to_33/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity▒

Identity_1Identity1tf.__operators__.getitem_1/strided_slice:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_output_shapes
:	:($
"
_output_shapes
:	
╛

ў
F__inference_dense_3_layer_call_and_return_conditional_losses_154776946

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
я
u
L__inference_private_to_33_layer_call_and_return_conditional_losses_154777004
ts
tensordot_b
identityj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesj
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/freeT
Tensordot/ShapeShapets*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackИ
Tensordot/transpose	TransposetsTensordot/concat:output:0*
T0*'
_output_shapes
:         	2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЗ
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2
Tensordot/Reshape_1/shapeП
Tensordot/Reshape_1Reshapetensordot_b"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2
Tensordot/Reshape_1Ъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2
Tensordot/MatMulw
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         2
	Tensordotj
IdentityIdentityTensordot:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	:	:K G
'
_output_shapes
:         	

_user_specified_nameTs:($
"
_output_shapes
:	
╫=
╝
D__inference_model_layer_call_and_return_conditional_losses_154777190

inputs
inputs_1
private_to_9_154777147!
dense_154777152:@
dense_154777154:@#
dense_1_154777157:@@
dense_1_154777159:@#
dense_2_154777162:@@
dense_2_154777164:@#
dense_3_154777167:@@
dense_3_154777169:@#
dense_4_154777172:@
dense_4_154777174:
private_to_33_154777185
identity

identity_1Ивdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallг
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm┐
 tf.compat.v1.transpose/transpose	Transposeinputs.tf.compat.v1.transpose/transpose/perm:output:0*
T0*+
_output_shapes
:         2"
 tf.compat.v1.transpose/transposeз
tf.linalg.matmul/MatMulBatchMatMulV2$tf.compat.v1.transpose/transpose:y:0inputs*
T0*+
_output_shapes
:         2
tf.linalg.matmul/MatMulЦ
private_to_9/PartitionedCallPartitionedCall tf.linalg.matmul/MatMul:output:0private_to_9_154777147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_private_to_9_layer_call_and_return_conditional_losses_1547768782
private_to_9/PartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis╝
tf.concat/concatConcatV2%private_to_9/PartitionedCall:output:0inputs_1tf.concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
tf.concat/concatб
dense/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0dense_154777152dense_154777154*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_1547768952
dense/StatefulPartitionedCall╕
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_154777157dense_1_154777159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_1547769122!
dense_1/StatefulPartitionedCall║
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_154777162dense_2_154777164*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_1547769292!
dense_2/StatefulPartitionedCall║
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_154777167dense_3_154777169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_1547769462!
dense_3/StatefulPartitionedCall║
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_154777172dense_4_154777174*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_4_layer_call_and_return_conditional_losses_1547769622!
dense_4/StatefulPartitionedCallн
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,tf.__operators__.getitem/strided_slice/stack▒
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem/strided_slice/stack_1▒
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.tf.__operators__.getitem/strided_slice/stack_2Ф
&tf.__operators__.getitem/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice▒
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem_1/strided_slice/stack╡
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_1/strided_slice/stack_1╡
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0tf.__operators__.getitem_1/strided_slice/stack_2Ю
(tf.__operators__.getitem_1/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask2*
(tf.__operators__.getitem_1/strided_sliceн
private_to_33/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0private_to_33_154777185*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_private_to_33_layer_call_and_return_conditional_losses_1547770042
private_to_33/PartitionedCallж
IdentityIdentity&private_to_33/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity▒

Identity_1Identity1tf.__operators__.getitem_1/strided_slice:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_output_shapes
:	:($
"
_output_shapes
:	
Я
Ш
+__inference_dense_2_layer_call_fn_154777741

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_1547769292
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┌=
╝
D__inference_model_layer_call_and_return_conditional_losses_154777351
input_1
input_2
private_to_9_154777308!
dense_154777313:@
dense_154777315:@#
dense_1_154777318:@@
dense_1_154777320:@#
dense_2_154777323:@@
dense_2_154777325:@#
dense_3_154777328:@@
dense_3_154777330:@#
dense_4_154777333:@
dense_4_154777335:
private_to_33_154777346
identity

identity_1Ивdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallг
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm└
 tf.compat.v1.transpose/transpose	Transposeinput_1.tf.compat.v1.transpose/transpose/perm:output:0*
T0*+
_output_shapes
:         2"
 tf.compat.v1.transpose/transposeи
tf.linalg.matmul/MatMulBatchMatMulV2$tf.compat.v1.transpose/transpose:y:0input_1*
T0*+
_output_shapes
:         2
tf.linalg.matmul/MatMulЦ
private_to_9/PartitionedCallPartitionedCall tf.linalg.matmul/MatMul:output:0private_to_9_154777308*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_private_to_9_layer_call_and_return_conditional_losses_1547768782
private_to_9/PartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis╗
tf.concat/concatConcatV2%private_to_9/PartitionedCall:output:0input_2tf.concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
tf.concat/concatб
dense/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0dense_154777313dense_154777315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_1547768952
dense/StatefulPartitionedCall╕
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_154777318dense_1_154777320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_1547769122!
dense_1/StatefulPartitionedCall║
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_154777323dense_2_154777325*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_1547769292!
dense_2/StatefulPartitionedCall║
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_154777328dense_3_154777330*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_1547769462!
dense_3/StatefulPartitionedCall║
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_154777333dense_4_154777335*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_4_layer_call_and_return_conditional_losses_1547769622!
dense_4/StatefulPartitionedCallн
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,tf.__operators__.getitem/strided_slice/stack▒
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem/strided_slice/stack_1▒
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.tf.__operators__.getitem/strided_slice/stack_2Ф
&tf.__operators__.getitem/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice▒
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem_1/strided_slice/stack╡
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_1/strided_slice/stack_1╡
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0tf.__operators__.getitem_1/strided_slice/stack_2Ю
(tf.__operators__.getitem_1/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask2*
(tf.__operators__.getitem_1/strided_sliceн
private_to_33/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0private_to_33_154777346*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_private_to_33_layer_call_and_return_conditional_losses_1547770042
private_to_33/PartitionedCallж
IdentityIdentity&private_to_33/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity▒

Identity_1Identity1tf.__operators__.getitem_1/strided_slice:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:($
"
_output_shapes
:	:($
"
_output_shapes
:	
ьн
с
%__inference__traced_restore_154778109
file_prefix/
assignvariableop_dense_kernel:@+
assignvariableop_1_dense_bias:@3
!assignvariableop_2_dense_1_kernel:@@-
assignvariableop_3_dense_1_bias:@3
!assignvariableop_4_dense_2_kernel:@@-
assignvariableop_5_dense_2_bias:@3
!assignvariableop_6_dense_3_kernel:@@-
assignvariableop_7_dense_3_bias:@3
!assignvariableop_8_dense_4_kernel:@-
assignvariableop_9_dense_4_bias:$
assignvariableop_10_beta_1: $
assignvariableop_11_beta_2: #
assignvariableop_12_decay: +
!assignvariableop_13_learning_rate: '
assignvariableop_14_adam_iter:	 #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: %
assignvariableop_19_total_2: %
assignvariableop_20_count_2: 9
'assignvariableop_21_adam_dense_kernel_m:@3
%assignvariableop_22_adam_dense_bias_m:@;
)assignvariableop_23_adam_dense_1_kernel_m:@@5
'assignvariableop_24_adam_dense_1_bias_m:@;
)assignvariableop_25_adam_dense_2_kernel_m:@@5
'assignvariableop_26_adam_dense_2_bias_m:@;
)assignvariableop_27_adam_dense_3_kernel_m:@@5
'assignvariableop_28_adam_dense_3_bias_m:@;
)assignvariableop_29_adam_dense_4_kernel_m:@5
'assignvariableop_30_adam_dense_4_bias_m:9
'assignvariableop_31_adam_dense_kernel_v:@3
%assignvariableop_32_adam_dense_bias_v:@;
)assignvariableop_33_adam_dense_1_kernel_v:@@5
'assignvariableop_34_adam_dense_1_bias_v:@;
)assignvariableop_35_adam_dense_2_kernel_v:@@5
'assignvariableop_36_adam_dense_2_bias_v:@;
)assignvariableop_37_adam_dense_3_kernel_v:@@5
'assignvariableop_38_adam_dense_3_bias_v:@;
)assignvariableop_39_adam_dense_4_kernel_v:@5
'assignvariableop_40_adam_dense_4_bias_v:
identity_42ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Є
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*■
valueЇBё*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesт
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesА
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╛
_output_shapesл
и::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1в
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2ж
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3д
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4ж
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ж
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ж
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9д
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10в
AssignVariableOp_10AssignVariableOpassignvariableop_10_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11в
AssignVariableOp_11AssignVariableOpassignvariableop_11_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12б
AssignVariableOp_12AssignVariableOpassignvariableop_12_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13й
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14е
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15б
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16б
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17г
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18г
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19г
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20г
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21п
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22н
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▒
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24п
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25▒
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26п
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27▒
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28п
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29▒
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30п
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31п
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32н
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_dense_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33▒
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34п
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35▒
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36п
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37▒
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38п
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39▒
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_4_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40п
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_4_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpф
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41╫
Identity_42IdentityIdentity_41:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_42"#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╛

ў
F__inference_dense_2_layer_call_and_return_conditional_losses_154776929

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╥	
ў
F__inference_dense_4_layer_call_and_return_conditional_losses_154777791

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Є
t
K__inference_private_to_9_layer_call_and_return_conditional_losses_154776878
ts
tensordot_b
identityq
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"      2
Tensordot/axesj
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/freeT
Tensordot/ShapeShapets*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackМ
Tensordot/transpose	TransposetsTensordot/concat:output:0*
T0*+
_output_shapes
:         2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЗ
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2
Tensordot/Reshape_1/shapeП
Tensordot/Reshape_1Reshapetensordot_b"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2
Tensordot/Reshape_1Ъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:         	2
	Tensordotf
IdentityIdentityTensordot:output:0*
T0*'
_output_shapes
:         	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         :	:O K
+
_output_shapes
:         

_user_specified_nameTs:($
"
_output_shapes
:	
╥	
ў
F__inference_dense_4_layer_call_and_return_conditional_losses_154776962

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▄
й
'__inference_signature_wrapper_154777391
input_1
input_2
unknown
	unknown_0:@
	unknown_1:@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:

unknown_10
identity

identity_1ИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference__wrapped_model_1547768382
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:($
"
_output_shapes
:	:($
"
_output_shapes
:	
╛

ў
F__inference_dense_1_layer_call_and_return_conditional_losses_154776912

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╛

ў
F__inference_dense_1_layer_call_and_return_conditional_losses_154777732

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╝

ї
D__inference_dense_layer_call_and_return_conditional_losses_154777712

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╝

ї
D__inference_dense_layer_call_and_return_conditional_losses_154776895

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┌=
╝
D__inference_model_layer_call_and_return_conditional_losses_154777301
input_1
input_2
private_to_9_154777258!
dense_154777263:@
dense_154777265:@#
dense_1_154777268:@@
dense_1_154777270:@#
dense_2_154777273:@@
dense_2_154777275:@#
dense_3_154777278:@@
dense_3_154777280:@#
dense_4_154777283:@
dense_4_154777285:
private_to_33_154777296
identity

identity_1Ивdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallг
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm└
 tf.compat.v1.transpose/transpose	Transposeinput_1.tf.compat.v1.transpose/transpose/perm:output:0*
T0*+
_output_shapes
:         2"
 tf.compat.v1.transpose/transposeи
tf.linalg.matmul/MatMulBatchMatMulV2$tf.compat.v1.transpose/transpose:y:0input_1*
T0*+
_output_shapes
:         2
tf.linalg.matmul/MatMulЦ
private_to_9/PartitionedCallPartitionedCall tf.linalg.matmul/MatMul:output:0private_to_9_154777258*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_private_to_9_layer_call_and_return_conditional_losses_1547768782
private_to_9/PartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis╗
tf.concat/concatConcatV2%private_to_9/PartitionedCall:output:0input_2tf.concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
tf.concat/concatб
dense/StatefulPartitionedCallStatefulPartitionedCalltf.concat/concat:output:0dense_154777263dense_154777265*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_1547768952
dense/StatefulPartitionedCall╕
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_154777268dense_1_154777270*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_1547769122!
dense_1/StatefulPartitionedCall║
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_154777273dense_2_154777275*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_1547769292!
dense_2/StatefulPartitionedCall║
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_154777278dense_3_154777280*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_1547769462!
dense_3/StatefulPartitionedCall║
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_154777283dense_4_154777285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_4_layer_call_and_return_conditional_losses_1547769622!
dense_4/StatefulPartitionedCallн
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,tf.__operators__.getitem/strided_slice/stack▒
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem/strided_slice/stack_1▒
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.tf.__operators__.getitem/strided_slice/stack_2Ф
&tf.__operators__.getitem/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice▒
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem_1/strided_slice/stack╡
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_1/strided_slice/stack_1╡
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0tf.__operators__.getitem_1/strided_slice/stack_2Ю
(tf.__operators__.getitem_1/strided_sliceStridedSlice(dense_4/StatefulPartitionedCall:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask2*
(tf.__operators__.getitem_1/strided_sliceн
private_to_33/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0private_to_33_154777296*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_private_to_33_layer_call_and_return_conditional_losses_1547770042
private_to_33/PartitionedCallж
IdentityIdentity&private_to_33/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity▒

Identity_1Identity1tf.__operators__.getitem_1/strided_slice:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:($
"
_output_shapes
:	:($
"
_output_shapes
:	
Я
Ш
+__inference_dense_4_layer_call_fn_154777781

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_4_layer_call_and_return_conditional_losses_1547769622
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Д
н
)__inference_model_layer_call_fn_154777423
inputs_0
inputs_1
unknown
	unknown_0:@
	unknown_1:@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:

unknown_10
identity

identity_1ИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_1547770102
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1:($
"
_output_shapes
:	:($
"
_output_shapes
:	
я
u
L__inference_private_to_33_layer_call_and_return_conditional_losses_154777826
ts
tensordot_b
identityj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesj
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/freeT
Tensordot/ShapeShapets*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackИ
Tensordot/transpose	TransposetsTensordot/concat:output:0*
T0*'
_output_shapes
:         	2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЗ
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2
Tensordot/Reshape_1/shapeП
Tensordot/Reshape_1Reshapetensordot_b"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2
Tensordot/Reshape_1Ъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2
Tensordot/MatMulw
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         2
	Tensordotj
IdentityIdentityTensordot:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	:	:K G
'
_output_shapes
:         	

_user_specified_nameTs:($
"
_output_shapes
:	
Д
н
)__inference_model_layer_call_fn_154777455
inputs_0
inputs_1
unknown
	unknown_0:@
	unknown_1:@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:

unknown_10
identity

identity_1ИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_1547771902
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1:($
"
_output_shapes
:	:($
"
_output_shapes
:	
■
л
)__inference_model_layer_call_fn_154777039
input_1
input_2
unknown
	unknown_0:@
	unknown_1:@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:

unknown_10
identity

identity_1ИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *>
_output_shapes,
*:         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_1547770102
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:($
"
_output_shapes
:	:($
"
_output_shapes
:	
Я
Ш
+__inference_dense_1_layer_call_fn_154777721

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_1547769122
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ЕО
▓
D__inference_model_layer_call_and_return_conditional_losses_154777556
inputs_0
inputs_1
private_to_9_tensordot_b6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@@5
'dense_3_biasadd_readvariableop_resource:@8
&dense_4_matmul_readvariableop_resource:@5
'dense_4_biasadd_readvariableop_resource:
private_to_33_tensordot_b
identity

identity_1Ивdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpг
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm┴
 tf.compat.v1.transpose/transpose	Transposeinputs_0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*+
_output_shapes
:         2"
 tf.compat.v1.transpose/transposeй
tf.linalg.matmul/MatMulBatchMatMulV2$tf.compat.v1.transpose/transpose:y:0inputs_0*
T0*+
_output_shapes
:         2
tf.linalg.matmul/MatMulЛ
private_to_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"      2
private_to_9/Tensordot/axesД
private_to_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_9/Tensordot/freeМ
private_to_9/Tensordot/ShapeShape tf.linalg.matmul/MatMul:output:0*
T0*
_output_shapes
:2
private_to_9/Tensordot/ShapeО
$private_to_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$private_to_9/Tensordot/GatherV2/axisТ
private_to_9/Tensordot/GatherV2GatherV2%private_to_9/Tensordot/Shape:output:0$private_to_9/Tensordot/free:output:0-private_to_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2!
private_to_9/Tensordot/GatherV2Т
&private_to_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&private_to_9/Tensordot/GatherV2_1/axisШ
!private_to_9/Tensordot/GatherV2_1GatherV2%private_to_9/Tensordot/Shape:output:0$private_to_9/Tensordot/axes:output:0/private_to_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2#
!private_to_9/Tensordot/GatherV2_1Ж
private_to_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_9/Tensordot/Const┤
private_to_9/Tensordot/ProdProd(private_to_9/Tensordot/GatherV2:output:0%private_to_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
private_to_9/Tensordot/ProdК
private_to_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
private_to_9/Tensordot/Const_1╝
private_to_9/Tensordot/Prod_1Prod*private_to_9/Tensordot/GatherV2_1:output:0'private_to_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
private_to_9/Tensordot/Prod_1К
"private_to_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"private_to_9/Tensordot/concat/axisё
private_to_9/Tensordot/concatConcatV2$private_to_9/Tensordot/free:output:0$private_to_9/Tensordot/axes:output:0+private_to_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
private_to_9/Tensordot/concat└
private_to_9/Tensordot/stackPack$private_to_9/Tensordot/Prod:output:0&private_to_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
private_to_9/Tensordot/stack╤
 private_to_9/Tensordot/transpose	Transpose tf.linalg.matmul/MatMul:output:0&private_to_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:         2"
 private_to_9/Tensordot/transpose╙
private_to_9/Tensordot/ReshapeReshape$private_to_9/Tensordot/transpose:y:0%private_to_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2 
private_to_9/Tensordot/Reshapeб
&private_to_9/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2(
&private_to_9/Tensordot/Reshape_1/shape├
 private_to_9/Tensordot/Reshape_1Reshapeprivate_to_9_tensordot_b/private_to_9/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2"
 private_to_9/Tensordot/Reshape_1╬
private_to_9/Tensordot/MatMulMatMul'private_to_9/Tensordot/Reshape:output:0)private_to_9/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2
private_to_9/Tensordot/MatMulК
private_to_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	2 
private_to_9/Tensordot/Const_2О
$private_to_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$private_to_9/Tensordot/concat_1/axis■
private_to_9/Tensordot/concat_1ConcatV2(private_to_9/Tensordot/GatherV2:output:0'private_to_9/Tensordot/Const_2:output:0-private_to_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
private_to_9/Tensordot/concat_1└
private_to_9/TensordotReshape'private_to_9/Tensordot/MatMul:product:0(private_to_9/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:         	2
private_to_9/Tensordotp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis╢
tf.concat/concatConcatV2private_to_9/Tensordot:output:0inputs_1tf.concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
tf.concat/concatЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMultf.concat/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/BiasAddv
dense/SoftplusSoftplusdense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense/Softplusе
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOpб
dense_1/MatMulMatMuldense/Softplus:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_1/BiasAdd|
dense_1/SoftplusSoftplusdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_1/Softplusе
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpг
dense_2/MatMulMatMuldense_1/Softplus:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/MatMulд
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOpб
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/BiasAdd|
dense_2/SoftplusSoftplusdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_2/Softplusе
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_3/MatMul/ReadVariableOpг
dense_3/MatMulMatMuldense_2/Softplus:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_3/MatMulд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_3/BiasAdd|
dense_3/SoftplusSoftplusdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_3/Softplusе
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_4/MatMul/ReadVariableOpг
dense_4/MatMulMatMuldense_3/Softplus:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/MatMulд
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpб
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/BiasAddн
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,tf.__operators__.getitem/strided_slice/stack▒
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem/strided_slice/stack_1▒
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.tf.__operators__.getitem/strided_slice/stack_2Д
&tf.__operators__.getitem/strided_sliceStridedSlicedense_4/BiasAdd:output:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice▒
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   20
.tf.__operators__.getitem_1/strided_slice/stack╡
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_1/strided_slice/stack_1╡
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0tf.__operators__.getitem_1/strided_slice/stack_2О
(tf.__operators__.getitem_1/strided_sliceStridedSlicedense_4/BiasAdd:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask2*
(tf.__operators__.getitem_1/strided_sliceЖ
private_to_33/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
private_to_33/Tensordot/axesЖ
private_to_33/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_33/Tensordot/freeЭ
private_to_33/Tensordot/ShapeShape/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
:2
private_to_33/Tensordot/ShapeР
%private_to_33/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%private_to_33/Tensordot/GatherV2/axisЧ
 private_to_33/Tensordot/GatherV2GatherV2&private_to_33/Tensordot/Shape:output:0%private_to_33/Tensordot/free:output:0.private_to_33/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 private_to_33/Tensordot/GatherV2Ф
'private_to_33/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'private_to_33/Tensordot/GatherV2_1/axisЭ
"private_to_33/Tensordot/GatherV2_1GatherV2&private_to_33/Tensordot/Shape:output:0%private_to_33/Tensordot/axes:output:00private_to_33/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"private_to_33/Tensordot/GatherV2_1И
private_to_33/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
private_to_33/Tensordot/Const╕
private_to_33/Tensordot/ProdProd)private_to_33/Tensordot/GatherV2:output:0&private_to_33/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
private_to_33/Tensordot/ProdМ
private_to_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
private_to_33/Tensordot/Const_1└
private_to_33/Tensordot/Prod_1Prod+private_to_33/Tensordot/GatherV2_1:output:0(private_to_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
private_to_33/Tensordot/Prod_1М
#private_to_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#private_to_33/Tensordot/concat/axisЎ
private_to_33/Tensordot/concatConcatV2%private_to_33/Tensordot/free:output:0%private_to_33/Tensordot/axes:output:0,private_to_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
private_to_33/Tensordot/concat─
private_to_33/Tensordot/stackPack%private_to_33/Tensordot/Prod:output:0'private_to_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
private_to_33/Tensordot/stack▀
!private_to_33/Tensordot/transpose	Transpose/tf.__operators__.getitem/strided_slice:output:0'private_to_33/Tensordot/concat:output:0*
T0*'
_output_shapes
:         	2#
!private_to_33/Tensordot/transpose╫
private_to_33/Tensordot/ReshapeReshape%private_to_33/Tensordot/transpose:y:0&private_to_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2!
private_to_33/Tensordot/Reshapeг
'private_to_33/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2)
'private_to_33/Tensordot/Reshape_1/shape╟
!private_to_33/Tensordot/Reshape_1Reshapeprivate_to_33_tensordot_b0private_to_33/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2#
!private_to_33/Tensordot/Reshape_1╥
private_to_33/Tensordot/MatMulMatMul(private_to_33/Tensordot/Reshape:output:0*private_to_33/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2 
private_to_33/Tensordot/MatMulУ
private_to_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
private_to_33/Tensordot/Const_2Р
%private_to_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%private_to_33/Tensordot/concat_1/axisГ
 private_to_33/Tensordot/concat_1ConcatV2)private_to_33/Tensordot/GatherV2:output:0(private_to_33/Tensordot/Const_2:output:0.private_to_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 private_to_33/Tensordot/concat_1╚
private_to_33/TensordotReshape(private_to_33/Tensordot/MatMul:product:0)private_to_33/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         2
private_to_33/Tensordot╣
IdentityIdentity private_to_33/Tensordot:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity╩

Identity_1Identity1tf.__operators__.getitem_1/strided_slice:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:U Q
+
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1:($
"
_output_shapes
:	:($
"
_output_shapes
:	
┼S
Н
"__inference__traced_save_154777976
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop
savev2_const_2

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameь
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*■
valueЇBё*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names▄
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices▌
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Я
_input_shapesН
К: :@:@:@@:@:@@:@:@@:@:@:: : : : : : : : : : : :@:@:@@:@:@@:@:@@:@:@::@:@:@@:@:@@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$	 

_output_shapes

:@: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$  

_output_shapes

:@: !

_output_shapes
:@:$" 

_output_shapes

:@@: #

_output_shapes
:@:$$ 

_output_shapes

:@@: %

_output_shapes
:@:$& 

_output_shapes

:@@: '

_output_shapes
:@:$( 

_output_shapes

:@: )

_output_shapes
::*

_output_shapes
: 
╛

ў
F__inference_dense_2_layer_call_and_return_conditional_losses_154777752

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

SoftplusЫ
IdentityIdentitySoftplus:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╢Э
Ф	
$__inference__wrapped_model_154776838
input_1
input_2"
model_private_to_9_tensordot_b<
*model_dense_matmul_readvariableop_resource:@9
+model_dense_biasadd_readvariableop_resource:@>
,model_dense_1_matmul_readvariableop_resource:@@;
-model_dense_1_biasadd_readvariableop_resource:@>
,model_dense_2_matmul_readvariableop_resource:@@;
-model_dense_2_biasadd_readvariableop_resource:@>
,model_dense_3_matmul_readvariableop_resource:@@;
-model_dense_3_biasadd_readvariableop_resource:@>
,model_dense_4_matmul_readvariableop_resource:@;
-model_dense_4_biasadd_readvariableop_resource:#
model_private_to_33_tensordot_b
identity

identity_1Ив"model/dense/BiasAdd/ReadVariableOpв!model/dense/MatMul/ReadVariableOpв$model/dense_1/BiasAdd/ReadVariableOpв#model/dense_1/MatMul/ReadVariableOpв$model/dense_2/BiasAdd/ReadVariableOpв#model/dense_2/MatMul/ReadVariableOpв$model/dense_3/BiasAdd/ReadVariableOpв#model/dense_3/MatMul/ReadVariableOpв$model/dense_4/BiasAdd/ReadVariableOpв#model/dense_4/MatMul/ReadVariableOpп
+model/tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+model/tf.compat.v1.transpose/transpose/perm╥
&model/tf.compat.v1.transpose/transpose	Transposeinput_14model/tf.compat.v1.transpose/transpose/perm:output:0*
T0*+
_output_shapes
:         2(
&model/tf.compat.v1.transpose/transpose║
model/tf.linalg.matmul/MatMulBatchMatMulV2*model/tf.compat.v1.transpose/transpose:y:0input_1*
T0*+
_output_shapes
:         2
model/tf.linalg.matmul/MatMulЧ
!model/private_to_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"      2#
!model/private_to_9/Tensordot/axesР
!model/private_to_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model/private_to_9/Tensordot/freeЮ
"model/private_to_9/Tensordot/ShapeShape&model/tf.linalg.matmul/MatMul:output:0*
T0*
_output_shapes
:2$
"model/private_to_9/Tensordot/ShapeЪ
*model/private_to_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model/private_to_9/Tensordot/GatherV2/axis░
%model/private_to_9/Tensordot/GatherV2GatherV2+model/private_to_9/Tensordot/Shape:output:0*model/private_to_9/Tensordot/free:output:03model/private_to_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%model/private_to_9/Tensordot/GatherV2Ю
,model/private_to_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,model/private_to_9/Tensordot/GatherV2_1/axis╢
'model/private_to_9/Tensordot/GatherV2_1GatherV2+model/private_to_9/Tensordot/Shape:output:0*model/private_to_9/Tensordot/axes:output:05model/private_to_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'model/private_to_9/Tensordot/GatherV2_1Т
"model/private_to_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"model/private_to_9/Tensordot/Const╠
!model/private_to_9/Tensordot/ProdProd.model/private_to_9/Tensordot/GatherV2:output:0+model/private_to_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!model/private_to_9/Tensordot/ProdЦ
$model/private_to_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$model/private_to_9/Tensordot/Const_1╘
#model/private_to_9/Tensordot/Prod_1Prod0model/private_to_9/Tensordot/GatherV2_1:output:0-model/private_to_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#model/private_to_9/Tensordot/Prod_1Ц
(model/private_to_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model/private_to_9/Tensordot/concat/axisП
#model/private_to_9/Tensordot/concatConcatV2*model/private_to_9/Tensordot/free:output:0*model/private_to_9/Tensordot/axes:output:01model/private_to_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#model/private_to_9/Tensordot/concat╪
"model/private_to_9/Tensordot/stackPack*model/private_to_9/Tensordot/Prod:output:0,model/private_to_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"model/private_to_9/Tensordot/stackщ
&model/private_to_9/Tensordot/transpose	Transpose&model/tf.linalg.matmul/MatMul:output:0,model/private_to_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:         2(
&model/private_to_9/Tensordot/transposeы
$model/private_to_9/Tensordot/ReshapeReshape*model/private_to_9/Tensordot/transpose:y:0+model/private_to_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2&
$model/private_to_9/Tensordot/Reshapeн
,model/private_to_9/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2.
,model/private_to_9/Tensordot/Reshape_1/shape█
&model/private_to_9/Tensordot/Reshape_1Reshapemodel_private_to_9_tensordot_b5model/private_to_9/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2(
&model/private_to_9/Tensordot/Reshape_1ц
#model/private_to_9/Tensordot/MatMulMatMul-model/private_to_9/Tensordot/Reshape:output:0/model/private_to_9/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2%
#model/private_to_9/Tensordot/MatMulЦ
$model/private_to_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	2&
$model/private_to_9/Tensordot/Const_2Ъ
*model/private_to_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model/private_to_9/Tensordot/concat_1/axisЬ
%model/private_to_9/Tensordot/concat_1ConcatV2.model/private_to_9/Tensordot/GatherV2:output:0-model/private_to_9/Tensordot/Const_2:output:03model/private_to_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%model/private_to_9/Tensordot/concat_1╪
model/private_to_9/TensordotReshape-model/private_to_9/Tensordot/MatMul:product:0.model/private_to_9/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:         	2
model/private_to_9/Tensordot|
model/tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/tf.concat/concat/axis═
model/tf.concat/concatConcatV2%model/private_to_9/Tensordot:output:0input_2$model/tf.concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
model/tf.concat/concat▒
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02#
!model/dense/MatMul/ReadVariableOp░
model/dense/MatMulMatMulmodel/tf.concat/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense/MatMul░
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"model/dense/BiasAdd/ReadVariableOp▒
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense/BiasAddИ
model/dense/SoftplusSoftplusmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model/dense/Softplus╖
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02%
#model/dense_1/MatMul/ReadVariableOp╣
model/dense_1/MatMulMatMul"model/dense/Softplus:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_1/MatMul╢
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp╣
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_1/BiasAddО
model/dense_1/SoftplusSoftplusmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model/dense_1/Softplus╖
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02%
#model/dense_2/MatMul/ReadVariableOp╗
model/dense_2/MatMulMatMul$model/dense_1/Softplus:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_2/MatMul╢
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp╣
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_2/BiasAddО
model/dense_2/SoftplusSoftplusmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model/dense_2/Softplus╖
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02%
#model/dense_3/MatMul/ReadVariableOp╗
model/dense_3/MatMulMatMul$model/dense_2/Softplus:activations:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_3/MatMul╢
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_3/BiasAdd/ReadVariableOp╣
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_3/BiasAddО
model/dense_3/SoftplusSoftplusmodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model/dense_3/Softplus╖
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#model/dense_4/MatMul/ReadVariableOp╗
model/dense_4/MatMulMatMul$model/dense_3/Softplus:activations:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/dense_4/MatMul╢
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_4/BiasAdd/ReadVariableOp╣
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/dense_4/BiasAdd╣
2model/tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2model/tf.__operators__.getitem/strided_slice/stack╜
4model/tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   26
4model/tf.__operators__.getitem/strided_slice/stack_1╜
4model/tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4model/tf.__operators__.getitem/strided_slice/stack_2и
,model/tf.__operators__.getitem/strided_sliceStridedSlicemodel/dense_4/BiasAdd:output:0;model/tf.__operators__.getitem/strided_slice/stack:output:0=model/tf.__operators__.getitem/strided_slice/stack_1:output:0=model/tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*

begin_mask*
end_mask2.
,model/tf.__operators__.getitem/strided_slice╜
4model/tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   26
4model/tf.__operators__.getitem_1/strided_slice/stack┴
6model/tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6model/tf.__operators__.getitem_1/strided_slice/stack_1┴
6model/tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6model/tf.__operators__.getitem_1/strided_slice/stack_2▓
.model/tf.__operators__.getitem_1/strided_sliceStridedSlicemodel/dense_4/BiasAdd:output:0=model/tf.__operators__.getitem_1/strided_slice/stack:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_1:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask20
.model/tf.__operators__.getitem_1/strided_sliceТ
"model/private_to_33/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2$
"model/private_to_33/Tensordot/axesТ
"model/private_to_33/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: 2$
"model/private_to_33/Tensordot/freeп
#model/private_to_33/Tensordot/ShapeShape5model/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
:2%
#model/private_to_33/Tensordot/ShapeЬ
+model/private_to_33/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model/private_to_33/Tensordot/GatherV2/axis╡
&model/private_to_33/Tensordot/GatherV2GatherV2,model/private_to_33/Tensordot/Shape:output:0+model/private_to_33/Tensordot/free:output:04model/private_to_33/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model/private_to_33/Tensordot/GatherV2а
-model/private_to_33/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-model/private_to_33/Tensordot/GatherV2_1/axis╗
(model/private_to_33/Tensordot/GatherV2_1GatherV2,model/private_to_33/Tensordot/Shape:output:0+model/private_to_33/Tensordot/axes:output:06model/private_to_33/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(model/private_to_33/Tensordot/GatherV2_1Ф
#model/private_to_33/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model/private_to_33/Tensordot/Const╨
"model/private_to_33/Tensordot/ProdProd/model/private_to_33/Tensordot/GatherV2:output:0,model/private_to_33/Tensordot/Const:output:0*
T0*
_output_shapes
: 2$
"model/private_to_33/Tensordot/ProdШ
%model/private_to_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%model/private_to_33/Tensordot/Const_1╪
$model/private_to_33/Tensordot/Prod_1Prod1model/private_to_33/Tensordot/GatherV2_1:output:0.model/private_to_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2&
$model/private_to_33/Tensordot/Prod_1Ш
)model/private_to_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model/private_to_33/Tensordot/concat/axisФ
$model/private_to_33/Tensordot/concatConcatV2+model/private_to_33/Tensordot/free:output:0+model/private_to_33/Tensordot/axes:output:02model/private_to_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$model/private_to_33/Tensordot/concat▄
#model/private_to_33/Tensordot/stackPack+model/private_to_33/Tensordot/Prod:output:0-model/private_to_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2%
#model/private_to_33/Tensordot/stackў
'model/private_to_33/Tensordot/transpose	Transpose5model/tf.__operators__.getitem/strided_slice:output:0-model/private_to_33/Tensordot/concat:output:0*
T0*'
_output_shapes
:         	2)
'model/private_to_33/Tensordot/transposeя
%model/private_to_33/Tensordot/ReshapeReshape+model/private_to_33/Tensordot/transpose:y:0,model/private_to_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2'
%model/private_to_33/Tensordot/Reshapeп
-model/private_to_33/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"	   	   2/
-model/private_to_33/Tensordot/Reshape_1/shape▀
'model/private_to_33/Tensordot/Reshape_1Reshapemodel_private_to_33_tensordot_b6model/private_to_33/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes

:		2)
'model/private_to_33/Tensordot/Reshape_1ъ
$model/private_to_33/Tensordot/MatMulMatMul.model/private_to_33/Tensordot/Reshape:output:00model/private_to_33/Tensordot/Reshape_1:output:0*
T0*'
_output_shapes
:         	2&
$model/private_to_33/Tensordot/MatMulЯ
%model/private_to_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%model/private_to_33/Tensordot/Const_2Ь
+model/private_to_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model/private_to_33/Tensordot/concat_1/axisб
&model/private_to_33/Tensordot/concat_1ConcatV2/model/private_to_33/Tensordot/GatherV2:output:0.model/private_to_33/Tensordot/Const_2:output:04model/private_to_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2(
&model/private_to_33/Tensordot/concat_1р
model/private_to_33/TensordotReshape.model/private_to_33/Tensordot/MatMul:product:0/model/private_to_33/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         2
model/private_to_33/Tensordot√
IdentityIdentity&model/private_to_33/Tensordot:output:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

IdentityМ

Identity_1Identity7model/tf.__operators__.getitem_1/strided_slice:output:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         :         :	: : : : : : : : : : :	2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp:T P
+
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:($
"
_output_shapes
:	:($
"
_output_shapes
:	"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┼
serving_default▒
?
input_14
serving_default_input_1:0         
;
input_20
serving_default_input_2:0         E
private_to_334
StatefulPartitionedCall:0         N
tf.__operators__.getitem_10
StatefulPartitionedCall:1         tensorflow/serving/predict:м╕
фa
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer-13
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
Т__call__
У_default_save_signature
+Ф&call_and_return_all_conditional_losses"┌]
_tf_keras_network╛]{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.transpose", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}, "name": "tf.compat.v1.transpose", "inbound_nodes": [["input_1", 0, 0, {"perm": [0, 2, 1], "name": "transpose", "conjugate": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.linalg.matmul", "trainable": true, "dtype": "float32", "function": "linalg.matmul"}, "name": "tf.linalg.matmul", "inbound_nodes": [["tf.compat.v1.transpose", 0, 0, {"b": ["input_1", 0, 0], "name": null}]]}, {"class_name": "_to_9", "config": {"name": "private_to_9", "trainable": true, "dtype": "float32"}, "name": "private_to_9", "inbound_nodes": [[["tf.linalg.matmul", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat", "inbound_nodes": [[["private_to_9", 0, 0, {"axis": 1}], ["input_2", 0, 0, {"axis": 1}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["tf.concat", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem", "inbound_nodes": [["dense_4", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 9, "step": null}]}}]]}, {"class_name": "_to_33", "config": {"name": "private_to_33", "trainable": true, "dtype": "float32"}, "name": "private_to_33", "inbound_nodes": [[["tf.__operators__.getitem", 0, 0, {}]]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_1", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_1", "inbound_nodes": [["dense_4", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 9, "stop": 12, "step": null}]}}]]}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["private_to_33", 0, 0], ["tf.__operators__.getitem_1", 0, 0]]}, "shared_object_id": 24, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 3, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 3]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 3, 3]}, {"class_name": "TensorShape", "items": [null, 3]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 3]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3]}, "float32", "input_2"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.transpose", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}, "name": "tf.compat.v1.transpose", "inbound_nodes": [["input_1", 0, 0, {"perm": [0, 2, 1], "name": "transpose", "conjugate": false}]], "shared_object_id": 1}, {"class_name": "TFOpLambda", "config": {"name": "tf.linalg.matmul", "trainable": true, "dtype": "float32", "function": "linalg.matmul"}, "name": "tf.linalg.matmul", "inbound_nodes": [["tf.compat.v1.transpose", 0, 0, {"b": ["input_1", 0, 0], "name": null}]], "shared_object_id": 2}, {"class_name": "_to_9", "config": {"name": "private_to_9", "trainable": true, "dtype": "float32"}, "name": "private_to_9", "inbound_nodes": [[["tf.linalg.matmul", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": [], "shared_object_id": 4}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat", "inbound_nodes": [[["private_to_9", 0, 0, {"axis": 1}], ["input_2", 0, 0, {"axis": 1}]]], "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["tf.concat", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem", "inbound_nodes": [["dense_4", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 9, "step": null}]}}]], "shared_object_id": 21}, {"class_name": "_to_33", "config": {"name": "private_to_33", "trainable": true, "dtype": "float32"}, "name": "private_to_33", "inbound_nodes": [[["tf.__operators__.getitem", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_1", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_1", "inbound_nodes": [["dense_4", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 9, "stop": 12, "step": null}]}}]], "shared_object_id": 23}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["private_to_33", 0, 0], ["tf.__operators__.getitem_1", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.004999999888241291, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ж
_init_input_shape"ь
_tf_keras_input_layer╠{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
є
	keras_api"с
_tf_keras_layer╟{"name": "tf.compat.v1.transpose", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.transpose", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}, "inbound_nodes": [["input_1", 0, 0, {"perm": [0, 2, 1], "name": "transpose", "conjugate": false}]], "shared_object_id": 1}
┌
	keras_api"╚
_tf_keras_layerо{"name": "tf.linalg.matmul", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.linalg.matmul", "trainable": true, "dtype": "float32", "function": "linalg.matmul"}, "inbound_nodes": [["tf.compat.v1.transpose", 0, 0, {"b": ["input_1", 0, 0], "name": null}]], "shared_object_id": 2}
И
regularization_losses
trainable_variables
	variables
	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"ў
_tf_keras_layer▌{"name": "private_to_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "_to_9", "config": {"name": "private_to_9", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["tf.linalg.matmul", 0, 0, {}]]], "shared_object_id": 3}
А
_init_input_shape"ц
_tf_keras_input_layer╞{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
┬
	keras_api"░
_tf_keras_layerЦ{"name": "tf.concat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}, "inbound_nodes": [[["private_to_9", 0, 0, {"axis": 1}], ["input_2", 0, 0, {"axis": 1}]]], "shared_object_id": 5}
¤

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"╓
_tf_keras_layer╝{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12]}}
 

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"╪
_tf_keras_layer╛{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
В	

*kernel
+bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"█
_tf_keras_layer┴{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
В	

0kernel
1bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"█
_tf_keras_layer┴{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
А	

6kernel
7bias
8regularization_losses
9trainable_variables
:	variables
;	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
═
<	keras_api"╗
_tf_keras_layerб{"name": "tf.__operators__.getitem", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["dense_4", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 9, "step": null}]}}]], "shared_object_id": 21}
Ф
=regularization_losses
>trainable_variables
?	variables
@	keras_api
б__call__
+в&call_and_return_all_conditional_losses"Г
_tf_keras_layerщ{"name": "private_to_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "_to_33", "config": {"name": "private_to_33", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["tf.__operators__.getitem", 0, 0, {}]]], "shared_object_id": 22}
╥
A	keras_api"└
_tf_keras_layerж{"name": "tf.__operators__.getitem_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_1", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["dense_4", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 9, "stop": 12, "step": null}]}}]], "shared_object_id": 23}
Щ

Bbeta_1

Cbeta_2
	Ddecay
Elearning_rate
Fiterm~m$mА%mБ*mВ+mГ0mД1mЕ6mЖ7mЗvИvЙ$vК%vЛ*vМ+vН0vО1vП6vР7vС"
	optimizer
 "
trackable_list_wrapper
f
0
1
$2
%3
*4
+5
06
17
68
79"
trackable_list_wrapper
f
0
1
$2
%3
*4
+5
06
17
68
79"
trackable_list_wrapper
╬
regularization_losses
Glayer_regularization_losses
Hlayer_metrics

Ilayers
Jnon_trainable_variables
trainable_variables
Kmetrics
	variables
Т__call__
У_default_save_signature
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
-
гserving_default"
signature_map
 "
trackable_list_wrapper
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Llayer_regularization_losses
Mlayer_metrics
regularization_losses

Nlayers
Onon_trainable_variables
trainable_variables
Pmetrics
	variables
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
"
_generic_user_object
:@2dense/kernel
:@2
dense/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
Qlayer_regularization_losses
Rlayer_metrics
 regularization_losses

Slayers
Tnon_trainable_variables
!trainable_variables
Umetrics
"	variables
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 :@@2dense_1/kernel
:@2dense_1/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
░
Vlayer_regularization_losses
Wlayer_metrics
&regularization_losses

Xlayers
Ynon_trainable_variables
'trainable_variables
Zmetrics
(	variables
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 :@@2dense_2/kernel
:@2dense_2/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
░
[layer_regularization_losses
\layer_metrics
,regularization_losses

]layers
^non_trainable_variables
-trainable_variables
_metrics
.	variables
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
 :@@2dense_3/kernel
:@2dense_3/bias
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
░
`layer_regularization_losses
alayer_metrics
2regularization_losses

blayers
cnon_trainable_variables
3trainable_variables
dmetrics
4	variables
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
░
elayer_regularization_losses
flayer_metrics
8regularization_losses

glayers
hnon_trainable_variables
9trainable_variables
imetrics
:	variables
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
jlayer_regularization_losses
klayer_metrics
=regularization_losses

llayers
mnon_trainable_variables
>trainable_variables
nmetrics
?	variables
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
5
o0
p1
q2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╘
	rtotal
	scount
t	variables
u	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 32}
Ё
	vtotal
	wcount
x	variables
y	keras_api"╣
_tf_keras_metricЮ{"class_name": "Mean", "name": "private_to_33_loss", "dtype": "float32", "config": {"name": "private_to_33_loss", "dtype": "float32"}, "shared_object_id": 33}
К
	ztotal
	{count
|	variables
}	keras_api"╙
_tf_keras_metric╕{"class_name": "Mean", "name": "tf.__operators__.getitem_1_loss", "dtype": "float32", "config": {"name": "tf.__operators__.getitem_1_loss", "dtype": "float32"}, "shared_object_id": 34}
:  (2total
:  (2count
.
r0
s1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
:  (2total
:  (2count
.
v0
w1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
#:!@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
%:#@@2Adam/dense_2/kernel/m
:@2Adam/dense_2/bias/m
%:#@@2Adam/dense_3/kernel/m
:@2Adam/dense_3/bias/m
%:#@2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
#:!@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
%:#@@2Adam/dense_2/kernel/v
:@2Adam/dense_2/bias/v
%:#@@2Adam/dense_3/kernel/v
:@2Adam/dense_3/bias/v
%:#@2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
Є2я
)__inference_model_layer_call_fn_154777039
)__inference_model_layer_call_fn_154777423
)__inference_model_layer_call_fn_154777455
)__inference_model_layer_call_fn_154777251└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
О2Л
$__inference__wrapped_model_154776838т
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *RвO
MЪJ
%К"
input_1         
!К
input_2         
▐2█
D__inference_model_layer_call_and_return_conditional_losses_154777556
D__inference_model_layer_call_and_return_conditional_losses_154777657
D__inference_model_layer_call_and_return_conditional_losses_154777301
D__inference_model_layer_call_and_return_conditional_losses_154777351└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╓2╙
0__inference_private_to_9_layer_call_fn_154777664Ю
Х▓С
FullArgSpec
argsЪ
jself
jTs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
K__inference_private_to_9_layer_call_and_return_conditional_losses_154777692Ю
Х▓С
FullArgSpec
argsЪ
jself
jTs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_dense_layer_call_fn_154777701в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_layer_call_and_return_conditional_losses_154777712в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_1_layer_call_fn_154777721в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_1_layer_call_and_return_conditional_losses_154777732в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_2_layer_call_fn_154777741в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_2_layer_call_and_return_conditional_losses_154777752в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_3_layer_call_fn_154777761в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_3_layer_call_and_return_conditional_losses_154777772в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_4_layer_call_fn_154777781в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_4_layer_call_and_return_conditional_losses_154777791в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╫2╘
1__inference_private_to_33_layer_call_fn_154777798Ю
Х▓С
FullArgSpec
argsЪ
jself
jTs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Є2я
L__inference_private_to_33_layer_call_and_return_conditional_losses_154777826Ю
Х▓С
FullArgSpec
argsЪ
jself
jTs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒B╥
'__inference_signature_wrapper_154777391input_1input_2"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
	J
Const
J	
Const_1░
$__inference__wrapped_model_154776838Зд$%*+0167е\вY
RвO
MЪJ
%К"
input_1         
!К
input_2         
к "ЦкТ
<
private_to_33+К(
private_to_33         
R
tf.__operators__.getitem_14К1
tf.__operators__.getitem_1         ж
F__inference_dense_1_layer_call_and_return_conditional_losses_154777732\$%/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_1_layer_call_fn_154777721O$%/в,
%в"
 К
inputs         @
к "К         @ж
F__inference_dense_2_layer_call_and_return_conditional_losses_154777752\*+/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_2_layer_call_fn_154777741O*+/в,
%в"
 К
inputs         @
к "К         @ж
F__inference_dense_3_layer_call_and_return_conditional_losses_154777772\01/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_3_layer_call_fn_154777761O01/в,
%в"
 К
inputs         @
к "К         @ж
F__inference_dense_4_layer_call_and_return_conditional_losses_154777791\67/в,
%в"
 К
inputs         @
к "%в"
К
0         
Ъ ~
+__inference_dense_4_layer_call_fn_154777781O67/в,
%в"
 К
inputs         @
к "К         д
D__inference_dense_layer_call_and_return_conditional_losses_154777712\/в,
%в"
 К
inputs         
к "%в"
К
0         @
Ъ |
)__inference_dense_layer_call_fn_154777701O/в,
%в"
 К
inputs         
к "К         @Р
D__inference_model_layer_call_and_return_conditional_losses_154777301╟д$%*+0167еdвa
ZвW
MЪJ
%К"
input_1         
!К
input_2         
p 

 
к "OвL
EЪB
!К
0/0         
К
0/1         
Ъ Р
D__inference_model_layer_call_and_return_conditional_losses_154777351╟д$%*+0167еdвa
ZвW
MЪJ
%К"
input_1         
!К
input_2         
p

 
к "OвL
EЪB
!К
0/0         
К
0/1         
Ъ Т
D__inference_model_layer_call_and_return_conditional_losses_154777556╔д$%*+0167еfвc
\вY
OЪL
&К#
inputs/0         
"К
inputs/1         
p 

 
к "OвL
EЪB
!К
0/0         
К
0/1         
Ъ Т
D__inference_model_layer_call_and_return_conditional_losses_154777657╔д$%*+0167еfвc
\вY
OЪL
&К#
inputs/0         
"К
inputs/1         
p

 
к "OвL
EЪB
!К
0/0         
К
0/1         
Ъ ч
)__inference_model_layer_call_fn_154777039╣д$%*+0167еdвa
ZвW
MЪJ
%К"
input_1         
!К
input_2         
p 

 
к "AЪ>
К
0         
К
1         ч
)__inference_model_layer_call_fn_154777251╣д$%*+0167еdвa
ZвW
MЪJ
%К"
input_1         
!К
input_2         
p

 
к "AЪ>
К
0         
К
1         щ
)__inference_model_layer_call_fn_154777423╗д$%*+0167еfвc
\вY
OЪL
&К#
inputs/0         
"К
inputs/1         
p 

 
к "AЪ>
К
0         
К
1         щ
)__inference_model_layer_call_fn_154777455╗д$%*+0167еfвc
\вY
OЪL
&К#
inputs/0         
"К
inputs/1         
p

 
к "AЪ>
К
0         
К
1         м
L__inference_private_to_33_layer_call_and_return_conditional_losses_154777826\е+в(
!в
К
Ts         	
к ")в&
К
0         
Ъ Д
1__inference_private_to_33_layer_call_fn_154777798Oе+в(
!в
К
Ts         	
к "К         л
K__inference_private_to_9_layer_call_and_return_conditional_losses_154777692\д/в,
%в"
 К
Ts         
к "%в"
К
0         	
Ъ Г
0__inference_private_to_9_layer_call_fn_154777664Oд/в,
%в"
 К
Ts         
к "К         	─
'__inference_signature_wrapper_154777391Шд$%*+0167еmвj
в 
cк`
0
input_1%К"
input_1         
,
input_2!К
input_2         "ЦкТ
<
private_to_33+К(
private_to_33         
R
tf.__operators__.getitem_14К1
tf.__operators__.getitem_1         