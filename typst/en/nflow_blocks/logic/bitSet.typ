#import "../nelson_help.typ": *

= bitSet <nflow_blocks:logic.bitSet>


#block-icon(image("bitSet.svg"))

Sets the bit at position BitIndex of the integer input to 1.

== Syntax

- #raw("Block type: bitSet");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Sets the bit at position BitIndex of the integer input to 1.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("bitSet");], 
  [Label], [Bit Set], 
)
  #strong[Description];

 Sets a single bit (0-based #raw("BitIndex");) of the integer-valued input to 1 by OR-ing in a one-bit mask. Values are reinterpreted as #raw("NumBits");-wide unsigned integers. Element-wise over the input width.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=40], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=80, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("BitIndex");], [0], 
  [#raw("NumBits");], [32], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [bitSet], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: out \= (x | (1 \<\< BitIndex)) & fullmask. #strong[Equation or Rule];

 #latex("y = u \\,|\\, 2^{\\text{BitIndex}}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/bitSet.cpp", title: "Runtime")


== Example

Set bit 1 of 8 (1000) to get 10 (1010).

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',8)), struct('id','b','type','bitSet','inputs',1,'outputs',1,'params',struct('BitIndex',1,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','b','fromIndex',0,'toIndex',0), struct('from','b','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.bitClear>)[bitClear];, #nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
