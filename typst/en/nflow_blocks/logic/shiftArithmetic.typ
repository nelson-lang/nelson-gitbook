#import "../nelson_help.typ": *

= shiftArithmetic <nflow_blocks:logic.shiftArithmetic>


#block-icon(image("shiftArithmetic.svg"))

Arithmetic bit shift left\/right by ShiftNumber (signed 64-bit).

== Syntax

- #raw("Block type: shiftArithmetic");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Arithmetic bit shift left\/right by ShiftNumber (signed 64-bit).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("shiftArithmetic");], 
  [Label], [Shift Arithmetic], 
)
  #strong[Description];

 Arithmetic bit shift of the integer-valued input. #raw("ShiftDirection"); \= "Left" multiplies by 2^ShiftNumber; "Right" performs a sign-preserving arithmetic right shift (dividing by 2^ShiftNumber, rounding toward negative infinity). Values are treated as signed 64-bit integers; the left shift is computed through unsigned arithmetic to stay well-defined. Element-wise over the input width.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=90, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("ShiftDirection");], [Left], 
  [#raw("ShiftNumber");], [1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [shiftArithmetic], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: Left -\> out \= x \<\< ShiftNumber; Right -\> out \= x \>\> ShiftNumber (arithmetic). #strong[Equation or Rule];

 #latex("y = u \\cdot 2^{\\pm \\text{ShiftNumber}}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/shiftArithmetic.cpp", title: "Runtime")


== Example

Shift 5 left by 3 bits to get 40.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',5)), struct('id','s','type','shiftArithmetic','inputs',1,'outputs',1,'params',struct('ShiftDirection','Left','ShiftNumber',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','s','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];, #nlink(<nflow_blocks:logic.extractBits>)[extractBits];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
