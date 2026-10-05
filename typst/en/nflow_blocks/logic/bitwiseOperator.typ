#import "../nelson_help.typ": *

= bitwiseOperator <nflow_blocks:logic.bitwiseOperator>


#block-icon(image("bitwiseOperator.svg"))

Bit-wise AND\/OR\/XOR\/NAND\/NOR\/NOT of the input against a constant BitMask.

== Syntax

- #raw("Block type: bitwiseOperator");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Bit-wise AND\/OR\/XOR\/NAND\/NOR\/NOT of the input against a constant BitMask.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("bitwiseOperator");], 
  [Label], [Bitwise Operator], 
)
  #strong[Description];

 Reinterprets the (integer-valued) input as an #raw("NumBits");-wide unsigned integer and applies the selected bit-wise #raw("Operation"); against the constant #raw("BitMask");. NOT ignores the mask. The result is masked back to #raw("NumBits"); bits and returned as a double. Element-wise over the input width.

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
  [#raw("Operation");], [AND], 
  [#raw("BitMask");], [0], 
  [#raw("NumBits");], [32], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [bitwiseOperator], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: x \= (uint)round(u) & fullmask; out \= op(x, BitMask) & fullmask, where fullmask \= 2^NumBits - 1. #strong[Equation or Rule];

 #latex("y = (u \\star \\text{BitMask}) \\,\\&\\, (2^{\\text{NumBits}}-1)"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/bitwiseOperator.cpp", title: "Runtime")


== Example

AND of 12 (1100) with mask 10 (1010) over 8 bits gives 8 (1000).

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',12)), struct('id','b','type','bitwiseOperator','inputs',1,'outputs',1,'params',struct('Operation','AND','BitMask',10,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','b','fromIndex',0,'toIndex',0), struct('from','b','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.bitSet>)[bitSet];, #nlink(<nflow_blocks:logic.bitClear>)[bitClear];, #nlink(<nflow_blocks:logic.extractBits>)[extractBits];, #nlink(<nflow_blocks:logic.shiftArithmetic>)[shiftArithmetic];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
