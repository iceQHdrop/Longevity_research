??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??
v
l2o_fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namel2o_fc/kernel
o
!l2o_fc/kernel/Read/ReadVariableOpReadVariableOpl2o_fc/kernel*
_output_shapes

:*
dtype0
n
l2o_fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namel2o_fc/bias
g
l2o_fc/bias/Read/ReadVariableOpReadVariableOpl2o_fc/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
		variables

regularization_losses
trainable_variables
	keras_api

0
1
 

0
1
?
metrics
	variables
layer_regularization_losses
non_trainable_variables
layer_metrics

layers
regularization_losses
trainable_variables
 
YW
VARIABLE_VALUEl2o_fc/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEl2o_fc/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
metrics
		variables
layer_regularization_losses
non_trainable_variables
layer_metrics

layers

regularization_losses
trainable_variables
 
 
 
 

0
 
 
 
 
 

serving_default_l2o_fc_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_l2o_fc_inputl2o_fc/kernell2o_fc/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_4938
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!l2o_fc/kernel/Read/ReadVariableOpl2o_fc/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU 2J 8? *&
f!R
__inference__traced_save_5024
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamel2o_fc/kernell2o_fc/bias*
Tin
2*
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
GPU 2J 8? *)
f$R"
 __inference__traced_restore_5040??
?
z
%__inference_l2o_fc_layer_call_fn_4995

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_l2o_fc_layer_call_and_return_conditional_losses_48642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
}
"__inference_l2o_layer_call_fn_4909
l2o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll2o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_l2o_layer_call_and_return_conditional_losses_49022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel2o_fc_input
?

?
=__inference_l2o_layer_call_and_return_conditional_losses_4958

inputs)
%l2o_fc_matmul_readvariableop_resource*
&l2o_fc_biasadd_readvariableop_resource
identity??l2o_fc/BiasAdd/ReadVariableOp?l2o_fc/MatMul/ReadVariableOp?
l2o_fc/MatMul/ReadVariableOpReadVariableOp%l2o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
l2o_fc/MatMul/ReadVariableOp?
l2o_fc/MatMulMatMulinputs$l2o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l2o_fc/MatMul?
l2o_fc/BiasAdd/ReadVariableOpReadVariableOp&l2o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
l2o_fc/BiasAdd/ReadVariableOp?
l2o_fc/BiasAddBiasAddl2o_fc/MatMul:product:0%l2o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l2o_fc/BiasAdd?
IdentityIdentityl2o_fc/BiasAdd:output:0^l2o_fc/BiasAdd/ReadVariableOp^l2o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2>
l2o_fc/BiasAdd/ReadVariableOpl2o_fc/BiasAdd/ReadVariableOp2<
l2o_fc/MatMul/ReadVariableOpl2o_fc/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
 __inference__traced_restore_5040
file_prefix"
assignvariableop_l2o_fc_kernel"
assignvariableop_1_l2o_fc_bias

identity_3??AssignVariableOp?AssignVariableOp_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_l2o_fc_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_l2o_fc_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2?

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1*
T0*
_output_shapes
: 2

Identity_3"!

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
=__inference_l2o_layer_call_and_return_conditional_losses_4920

inputs
l2o_fc_4914
l2o_fc_4916
identity??l2o_fc/StatefulPartitionedCall?
l2o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl2o_fc_4914l2o_fc_4916*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_l2o_fc_layer_call_and_return_conditional_losses_48642 
l2o_fc/StatefulPartitionedCall?
IdentityIdentity'l2o_fc/StatefulPartitionedCall:output:0^l2o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l2o_fc/StatefulPartitionedCalll2o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__wrapped_model_4850
l2o_fc_input-
)l2o_l2o_fc_matmul_readvariableop_resource.
*l2o_l2o_fc_biasadd_readvariableop_resource
identity??!l2o/l2o_fc/BiasAdd/ReadVariableOp? l2o/l2o_fc/MatMul/ReadVariableOp?
 l2o/l2o_fc/MatMul/ReadVariableOpReadVariableOp)l2o_l2o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 l2o/l2o_fc/MatMul/ReadVariableOp?
l2o/l2o_fc/MatMulMatMull2o_fc_input(l2o/l2o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l2o/l2o_fc/MatMul?
!l2o/l2o_fc/BiasAdd/ReadVariableOpReadVariableOp*l2o_l2o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!l2o/l2o_fc/BiasAdd/ReadVariableOp?
l2o/l2o_fc/BiasAddBiasAddl2o/l2o_fc/MatMul:product:0)l2o/l2o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l2o/l2o_fc/BiasAdd?
IdentityIdentityl2o/l2o_fc/BiasAdd:output:0"^l2o/l2o_fc/BiasAdd/ReadVariableOp!^l2o/l2o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2F
!l2o/l2o_fc/BiasAdd/ReadVariableOp!l2o/l2o_fc/BiasAdd/ReadVariableOp2D
 l2o/l2o_fc/MatMul/ReadVariableOp l2o/l2o_fc/MatMul/ReadVariableOp:U Q
'
_output_shapes
:?????????
&
_user_specified_namel2o_fc_input
?
?
__inference__traced_save_5024
file_prefix,
(savev2_l2o_fc_kernel_read_readvariableop*
&savev2_l2o_fc_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_l2o_fc_kernel_read_readvariableop&savev2_l2o_fc_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*'
_input_shapes
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
=__inference_l2o_layer_call_and_return_conditional_losses_4890
l2o_fc_input
l2o_fc_4884
l2o_fc_4886
identity??l2o_fc/StatefulPartitionedCall?
l2o_fc/StatefulPartitionedCallStatefulPartitionedCalll2o_fc_inputl2o_fc_4884l2o_fc_4886*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_l2o_fc_layer_call_and_return_conditional_losses_48642 
l2o_fc/StatefulPartitionedCall?
IdentityIdentity'l2o_fc/StatefulPartitionedCall:output:0^l2o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l2o_fc/StatefulPartitionedCalll2o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel2o_fc_input
?	
?
@__inference_l2o_fc_layer_call_and_return_conditional_losses_4864

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
w
"__inference_l2o_layer_call_fn_4976

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_l2o_layer_call_and_return_conditional_losses_49202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
}
"__inference_signature_wrapper_4938
l2o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll2o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_48502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel2o_fc_input
?
}
"__inference_l2o_layer_call_fn_4927
l2o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll2o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_l2o_layer_call_and_return_conditional_losses_49202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel2o_fc_input
?

?
=__inference_l2o_layer_call_and_return_conditional_losses_4948

inputs)
%l2o_fc_matmul_readvariableop_resource*
&l2o_fc_biasadd_readvariableop_resource
identity??l2o_fc/BiasAdd/ReadVariableOp?l2o_fc/MatMul/ReadVariableOp?
l2o_fc/MatMul/ReadVariableOpReadVariableOp%l2o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
l2o_fc/MatMul/ReadVariableOp?
l2o_fc/MatMulMatMulinputs$l2o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l2o_fc/MatMul?
l2o_fc/BiasAdd/ReadVariableOpReadVariableOp&l2o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
l2o_fc/BiasAdd/ReadVariableOp?
l2o_fc/BiasAddBiasAddl2o_fc/MatMul:product:0%l2o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l2o_fc/BiasAdd?
IdentityIdentityl2o_fc/BiasAdd:output:0^l2o_fc/BiasAdd/ReadVariableOp^l2o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2>
l2o_fc/BiasAdd/ReadVariableOpl2o_fc/BiasAdd/ReadVariableOp2<
l2o_fc/MatMul/ReadVariableOpl2o_fc/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
w
"__inference_l2o_layer_call_fn_4967

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_l2o_layer_call_and_return_conditional_losses_49022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
=__inference_l2o_layer_call_and_return_conditional_losses_4902

inputs
l2o_fc_4896
l2o_fc_4898
identity??l2o_fc/StatefulPartitionedCall?
l2o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl2o_fc_4896l2o_fc_4898*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_l2o_fc_layer_call_and_return_conditional_losses_48642 
l2o_fc/StatefulPartitionedCall?
IdentityIdentity'l2o_fc/StatefulPartitionedCall:output:0^l2o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l2o_fc/StatefulPartitionedCalll2o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
=__inference_l2o_layer_call_and_return_conditional_losses_4881
l2o_fc_input
l2o_fc_4875
l2o_fc_4877
identity??l2o_fc/StatefulPartitionedCall?
l2o_fc/StatefulPartitionedCallStatefulPartitionedCalll2o_fc_inputl2o_fc_4875l2o_fc_4877*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_l2o_fc_layer_call_and_return_conditional_losses_48642 
l2o_fc/StatefulPartitionedCall?
IdentityIdentity'l2o_fc/StatefulPartitionedCall:output:0^l2o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l2o_fc/StatefulPartitionedCalll2o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel2o_fc_input
?	
?
@__inference_l2o_fc_layer_call_and_return_conditional_losses_4986

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
l2o_fc_input5
serving_default_l2o_fc_input:0?????????:
l2o_fc0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?=
?
layer_with_weights-0
layer-0
	variables
regularization_losses
trainable_variables
	keras_api

signatures
*&call_and_return_all_conditional_losses
_default_save_signature
__call__"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "l2o", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "l2o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l2o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l2o_fc", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l2o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l2o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l2o_fc", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
?

kernel
bias
		variables

regularization_losses
trainable_variables
	keras_api
*&call_and_return_all_conditional_losses
__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "l2o_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "l2o_fc", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6]}}
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
metrics
	variables
layer_regularization_losses
non_trainable_variables
layer_metrics

layers
regularization_losses
trainable_variables
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
:2l2o_fc/kernel
:2l2o_fc/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
metrics
		variables
layer_regularization_losses
non_trainable_variables
layer_metrics

layers

regularization_losses
trainable_variables
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
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
?2?
=__inference_l2o_layer_call_and_return_conditional_losses_4958
=__inference_l2o_layer_call_and_return_conditional_losses_4948
=__inference_l2o_layer_call_and_return_conditional_losses_4881
=__inference_l2o_layer_call_and_return_conditional_losses_4890?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_4850?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *+?(
&?#
l2o_fc_input?????????
?2?
"__inference_l2o_layer_call_fn_4976
"__inference_l2o_layer_call_fn_4927
"__inference_l2o_layer_call_fn_4909
"__inference_l2o_layer_call_fn_4967?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_l2o_fc_layer_call_and_return_conditional_losses_4986?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_l2o_fc_layer_call_fn_4995?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_4938l2o_fc_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_4850l5?2
+?(
&?#
l2o_fc_input?????????
? "/?,
*
l2o_fc ?
l2o_fc??????????
@__inference_l2o_fc_layer_call_and_return_conditional_losses_4986\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? x
%__inference_l2o_fc_layer_call_fn_4995O/?,
%?"
 ?
inputs?????????
? "???????????
=__inference_l2o_layer_call_and_return_conditional_losses_4881j=?:
3?0
&?#
l2o_fc_input?????????
p

 
? "%?"
?
0?????????
? ?
=__inference_l2o_layer_call_and_return_conditional_losses_4890j=?:
3?0
&?#
l2o_fc_input?????????
p 

 
? "%?"
?
0?????????
? ?
=__inference_l2o_layer_call_and_return_conditional_losses_4948d7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
=__inference_l2o_layer_call_and_return_conditional_losses_4958d7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
"__inference_l2o_layer_call_fn_4909]=?:
3?0
&?#
l2o_fc_input?????????
p

 
? "???????????
"__inference_l2o_layer_call_fn_4927]=?:
3?0
&?#
l2o_fc_input?????????
p 

 
? "??????????}
"__inference_l2o_layer_call_fn_4967W7?4
-?*
 ?
inputs?????????
p

 
? "??????????}
"__inference_l2o_layer_call_fn_4976W7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
"__inference_signature_wrapper_4938|E?B
? 
;?8
6
l2o_fc_input&?#
l2o_fc_input?????????"/?,
*
l2o_fc ?
l2o_fc?????????