??
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.3.12v2.3.0-54-gfcc4b966f18??
~
l4o/l4o_fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namel4o/l4o_fc/kernel
w
%l4o/l4o_fc/kernel/Read/ReadVariableOpReadVariableOpl4o/l4o_fc/kernel*
_output_shapes

:*
dtype0
v
l4o/l4o_fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namel4o/l4o_fc/bias
o
#l4o/l4o_fc/bias/Read/ReadVariableOpReadVariableOpl4o/l4o_fc/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?	
value?	B?	 B?	
?
layer_with_weights-0
layer-0
layer-1
	variables
regularization_losses
trainable_variables
	keras_api

signatures
|
_inbound_nodes

	kernel

bias
	variables
regularization_losses
trainable_variables
	keras_api
f
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api

	0

1
 

	0

1
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
 
 
][
VARIABLE_VALUEl4o/l4o_fc/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEl4o/l4o_fc/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

	0

1
 

	0

1
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
 
 
 
 
?
layer_regularization_losses
metrics

 layers
!layer_metrics
	variables
regularization_losses
trainable_variables
"non_trainable_variables
 
 

0
1
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

serving_default_l4o_fc_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_l4o_fc_inputl4o/l4o_fc/kernell4o/l4o_fc/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_60775
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%l4o/l4o_fc/kernel/Read/ReadVariableOp#l4o/l4o_fc/bias/Read/ReadVariableOpConst*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_60873
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamel4o/l4o_fc/kernell4o/l4o_fc/bias*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_60889ѯ
?

?
>__inference_l4o_layer_call_and_return_conditional_losses_60715
l4o_fc_input
l4o_fc_60696
l4o_fc_60698
identity??l4o_fc/StatefulPartitionedCall?
l4o_fc/StatefulPartitionedCallStatefulPartitionedCalll4o_fc_inputl4o_fc_60696l4o_fc_60698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l4o_fc_layer_call_and_return_conditional_losses_606852 
l4o_fc/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall'l4o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_28_layer_call_and_return_conditional_losses_607062
activation_28/PartitionedCall?
IdentityIdentity&activation_28/PartitionedCall:output:0^l4o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l4o_fc/StatefulPartitionedCalll4o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel4o_fc_input
?
I
-__inference_activation_28_layer_call_fn_60844

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_28_layer_call_and_return_conditional_losses_607062
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__traced_save_60873
file_prefix0
,savev2_l4o_l4o_fc_kernel_read_readvariableop.
*savev2_l4o_l4o_fc_bias_read_readvariableop
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
Const?
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_aa44121e59134b73ae3b25c57e5854c0/part2	
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_l4o_l4o_fc_kernel_read_readvariableop*savev2_l4o_l4o_fc_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
A__inference_l4o_fc_layer_call_and_return_conditional_losses_60685

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
x
#__inference_l4o_layer_call_fn_60815

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l4o_layer_call_and_return_conditional_losses_607572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
>__inference_l4o_layer_call_and_return_conditional_losses_60786

inputs)
%l4o_fc_matmul_readvariableop_resource*
&l4o_fc_biasadd_readvariableop_resource
identity??
l4o_fc/MatMul/ReadVariableOpReadVariableOp%l4o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
l4o_fc/MatMul/ReadVariableOp?
l4o_fc/MatMulMatMulinputs$l4o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l4o_fc/MatMul?
l4o_fc/BiasAdd/ReadVariableOpReadVariableOp&l4o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
l4o_fc/BiasAdd/ReadVariableOp?
l4o_fc/BiasAddBiasAddl4o_fc/MatMul:product:0%l4o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l4o_fc/BiasAdd?
activation_28/SigmoidSigmoidl4o_fc/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_28/Sigmoidm
IdentityIdentityactivation_28/Sigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
#__inference_signature_wrapper_60775
l4o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll4o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_606712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel4o_fc_input
?
~
#__inference_l4o_layer_call_fn_60764
l4o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll4o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l4o_layer_call_and_return_conditional_losses_607572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel4o_fc_input
?

?
>__inference_l4o_layer_call_and_return_conditional_losses_60725
l4o_fc_input
l4o_fc_60718
l4o_fc_60720
identity??l4o_fc/StatefulPartitionedCall?
l4o_fc/StatefulPartitionedCallStatefulPartitionedCalll4o_fc_inputl4o_fc_60718l4o_fc_60720*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l4o_fc_layer_call_and_return_conditional_losses_606852 
l4o_fc/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall'l4o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_28_layer_call_and_return_conditional_losses_607062
activation_28/PartitionedCall?
IdentityIdentity&activation_28/PartitionedCall:output:0^l4o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l4o_fc/StatefulPartitionedCalll4o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel4o_fc_input
?
{
&__inference_l4o_fc_layer_call_fn_60834

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l4o_fc_layer_call_and_return_conditional_losses_606852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
>__inference_l4o_layer_call_and_return_conditional_losses_60797

inputs)
%l4o_fc_matmul_readvariableop_resource*
&l4o_fc_biasadd_readvariableop_resource
identity??
l4o_fc/MatMul/ReadVariableOpReadVariableOp%l4o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
l4o_fc/MatMul/ReadVariableOp?
l4o_fc/MatMulMatMulinputs$l4o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l4o_fc/MatMul?
l4o_fc/BiasAdd/ReadVariableOpReadVariableOp&l4o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
l4o_fc/BiasAdd/ReadVariableOp?
l4o_fc/BiasAddBiasAddl4o_fc/MatMul:product:0%l4o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l4o_fc/BiasAdd?
activation_28/SigmoidSigmoidl4o_fc/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_28/Sigmoidm
IdentityIdentityactivation_28/Sigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_l4o_layer_call_and_return_conditional_losses_60757

inputs
l4o_fc_60750
l4o_fc_60752
identity??l4o_fc/StatefulPartitionedCall?
l4o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl4o_fc_60750l4o_fc_60752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l4o_fc_layer_call_and_return_conditional_losses_606852 
l4o_fc/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall'l4o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_28_layer_call_and_return_conditional_losses_607062
activation_28/PartitionedCall?
IdentityIdentity&activation_28/PartitionedCall:output:0^l4o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l4o_fc/StatefulPartitionedCalll4o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
x
#__inference_l4o_layer_call_fn_60806

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l4o_layer_call_and_return_conditional_losses_607382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
!__inference__traced_restore_60889
file_prefix&
"assignvariableop_l4o_l4o_fc_kernel&
"assignvariableop_1_l4o_l4o_fc_bias

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
AssignVariableOpAssignVariableOp"assignvariableop_l4o_l4o_fc_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_l4o_l4o_fc_biasIdentity_1:output:0"/device:CPU:0*
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
A__inference_l4o_fc_layer_call_and_return_conditional_losses_60825

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_l4o_layer_call_and_return_conditional_losses_60738

inputs
l4o_fc_60731
l4o_fc_60733
identity??l4o_fc/StatefulPartitionedCall?
l4o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl4o_fc_60731l4o_fc_60733*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l4o_fc_layer_call_and_return_conditional_losses_606852 
l4o_fc/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall'l4o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_28_layer_call_and_return_conditional_losses_607062
activation_28/PartitionedCall?
IdentityIdentity&activation_28/PartitionedCall:output:0^l4o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l4o_fc/StatefulPartitionedCalll4o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
#__inference_l4o_layer_call_fn_60745
l4o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll4o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l4o_layer_call_and_return_conditional_losses_607382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel4o_fc_input
?

?
 __inference__wrapped_model_60671
l4o_fc_input-
)l4o_l4o_fc_matmul_readvariableop_resource.
*l4o_l4o_fc_biasadd_readvariableop_resource
identity??
 l4o/l4o_fc/MatMul/ReadVariableOpReadVariableOp)l4o_l4o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 l4o/l4o_fc/MatMul/ReadVariableOp?
l4o/l4o_fc/MatMulMatMull4o_fc_input(l4o/l4o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l4o/l4o_fc/MatMul?
!l4o/l4o_fc/BiasAdd/ReadVariableOpReadVariableOp*l4o_l4o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!l4o/l4o_fc/BiasAdd/ReadVariableOp?
l4o/l4o_fc/BiasAddBiasAddl4o/l4o_fc/MatMul:product:0)l4o/l4o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l4o/l4o_fc/BiasAdd?
l4o/activation_28/SigmoidSigmoidl4o/l4o_fc/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
l4o/activation_28/Sigmoidq
IdentityIdentityl4o/activation_28/Sigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::U Q
'
_output_shapes
:?????????
&
_user_specified_namel4o_fc_input
?
d
H__inference_activation_28_layer_call_and_return_conditional_losses_60839

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_activation_28_layer_call_and_return_conditional_losses_60706

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
l4o_fc_input5
serving_default_l4o_fc_input:0?????????A
activation_280
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?N
?
layer_with_weights-0
layer-0
layer-1
	variables
regularization_losses
trainable_variables
	keras_api

signatures
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "l4o", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "l4o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l4o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l4o_fc", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l4o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l4o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l4o_fc", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}}}
?
_inbound_nodes

	kernel

bias
	variables
regularization_losses
trainable_variables
	keras_api
&__call__
*'&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "l4o_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "l4o_fc", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12]}}
?
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api
(__call__
*)&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
*serving_default"
signature_map
 "
trackable_list_wrapper
#:!2l4o/l4o_fc/kernel
:2l4o/l4o_fc/bias
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
layer_regularization_losses
metrics

 layers
!layer_metrics
	variables
regularization_losses
trainable_variables
"non_trainable_variables
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
?2?
#__inference_l4o_layer_call_fn_60806
#__inference_l4o_layer_call_fn_60745
#__inference_l4o_layer_call_fn_60764
#__inference_l4o_layer_call_fn_60815?
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
?2?
>__inference_l4o_layer_call_and_return_conditional_losses_60786
>__inference_l4o_layer_call_and_return_conditional_losses_60725
>__inference_l4o_layer_call_and_return_conditional_losses_60797
>__inference_l4o_layer_call_and_return_conditional_losses_60715?
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
 __inference__wrapped_model_60671?
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
l4o_fc_input?????????
?2?
&__inference_l4o_fc_layer_call_fn_60834?
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
A__inference_l4o_fc_layer_call_and_return_conditional_losses_60825?
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
-__inference_activation_28_layer_call_fn_60844?
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
H__inference_activation_28_layer_call_and_return_conditional_losses_60839?
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
7B5
#__inference_signature_wrapper_60775l4o_fc_input?
 __inference__wrapped_model_60671z	
5?2
+?(
&?#
l4o_fc_input?????????
? "=?:
8
activation_28'?$
activation_28??????????
H__inference_activation_28_layer_call_and_return_conditional_losses_60839X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
-__inference_activation_28_layer_call_fn_60844K/?,
%?"
 ?
inputs?????????
? "???????????
A__inference_l4o_fc_layer_call_and_return_conditional_losses_60825\	
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? y
&__inference_l4o_fc_layer_call_fn_60834O	
/?,
%?"
 ?
inputs?????????
? "???????????
>__inference_l4o_layer_call_and_return_conditional_losses_60715j	
=?:
3?0
&?#
l4o_fc_input?????????
p

 
? "%?"
?
0?????????
? ?
>__inference_l4o_layer_call_and_return_conditional_losses_60725j	
=?:
3?0
&?#
l4o_fc_input?????????
p 

 
? "%?"
?
0?????????
? ?
>__inference_l4o_layer_call_and_return_conditional_losses_60786d	
7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
>__inference_l4o_layer_call_and_return_conditional_losses_60797d	
7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
#__inference_l4o_layer_call_fn_60745]	
=?:
3?0
&?#
l4o_fc_input?????????
p

 
? "???????????
#__inference_l4o_layer_call_fn_60764]	
=?:
3?0
&?#
l4o_fc_input?????????
p 

 
? "??????????~
#__inference_l4o_layer_call_fn_60806W	
7?4
-?*
 ?
inputs?????????
p

 
? "??????????~
#__inference_l4o_layer_call_fn_60815W	
7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
#__inference_signature_wrapper_60775?	
E?B
? 
;?8
6
l4o_fc_input&?#
l4o_fc_input?????????"=?:
8
activation_28'?$
activation_28?????????