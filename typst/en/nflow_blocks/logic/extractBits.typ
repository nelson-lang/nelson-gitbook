#import "../nelson_help.typ": *

= extractBits <nflow_blocks:logic.extractBits>


#block-icon(image("extractBits.svg"))

Extracts NumBitsToExtract bits starting at StartBit, right-aligned.

== Syntax

- #raw("Block type: extractBits");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Extracts NumBitsToExtract bits starting at StartBit, right-aligned.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("extractBits");], 
  [Label], [Extract Bits], 
)
  #strong[Description];

 Extracts a contiguous field of #raw("NumBitsToExtract"); bits starting at bit #raw("StartBit"); (0-based, LSB) from the integer-valued input and right-aligns it in the output. Values are reinterpreted as #raw("NumBits");-wide unsigned integers. Element-wise over the input width.

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
  [#raw("StartBit");], [0], 
  [#raw("NumBitsToExtract");], [8], 
  [#raw("NumBits");], [32], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [extractBits], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: out \= (x \>\> StartBit) & ((1 \<\< NumBitsToExtract) - 1). #strong[Equation or Rule];

 #latex("y = (u \\gg \\text{StartBit}) \\,\\&\\, (2^{\\text{NumBitsToExtract}}-1)"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/extractBits.cpp", title: "Runtime")


== Example

Extract the high nibble of 180 (10110100) starting at bit 4: 1011 \= 11.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',180)), struct('id','e','type','extractBits','inputs',1,'outputs',1,'params',struct('StartBit',4,'NumBitsToExtract',4,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','e','fromIndex',0,'toIndex',0), struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];, #nlink(<nflow_blocks:logic.shiftArithmetic>)[shiftArithmetic];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
