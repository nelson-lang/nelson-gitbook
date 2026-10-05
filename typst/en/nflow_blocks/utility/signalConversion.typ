#import "../nelson_help.typ": *

= signalConversion <nflow_blocks:utility.signalConversion>


#block-icon(image("signalConversion.svg"))

Pass-through that copies its input to its output unchanged (conversion point).

== Syntax

- #raw("Block type: signalConversion");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Pass-through that copies its input to its output unchanged (conversion point).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility], 
  [Type], [#raw("signalConversion");], 
  [Label], [Signal Conversion], 
)
  #strong[Description];

 A pass-through that copies its input to its output unchanged. It marks an explicit signal-conversion point in a diagram (a contiguous-copy \/ signal-specification boundary); the value is identical, so it is a plain element-wise identity. Scalar or vector.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=25], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=90, y\=25], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#emph[none];], [], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [signalConversion], 
  [Family], [Utility], 
  [Rendered size], [90 x 50], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: out \= in, element-wise. #strong[Equation or Rule];

 #latex("y = u"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/signalConversion.cpp", title: "Runtime")


== Example

Input 5 passes through unchanged to 5.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',5)), struct('id','s','type','signalConversion','inputs',1,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','s','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:utility.convert>)[convert];, #nlink(<nflow_blocks:utility.reshape>)[reshape];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
