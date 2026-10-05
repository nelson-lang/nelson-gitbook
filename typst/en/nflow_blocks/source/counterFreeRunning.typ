#import "../nelson_help.typ": *

= counterFreeRunning <nflow_blocks:source.counterFreeRunning>


#block-icon(image("counterFreeRunning.svg"))

Free-running up-counter, wraps modulo 2^NumBits.

== Syntax

- #raw("Block type: counterFreeRunning");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Free-running up-counter, wraps modulo 2^NumBits.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source], 
  [Type], [#raw("counterFreeRunning");], 
  [Label], [Counter Free-Running], 
)
  #strong[Description];

 A free-running up-counter with no input. Starts at 0 and increments by 1 at every sample step, wrapping back to 0 after 2^#raw("NumBits"); - 1 (unsigned modulo arithmetic). The current count is emitted before the step's increment, so the first sample is 0.

 #strong[Ports];

 This block has no input ports.

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
  [#raw("NumBits");], [16], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [counterFreeRunning], 
  [Family], [Source], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= count. UPDATE: count \= (count + 1) mod 2^NumBits. #strong[Equation or Rule];

 #latex("y_k = k \\bmod 2^{\\text{NumBits}}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/counterFreeRunning.cpp", title: "Runtime")


== Example

A 2-bit counter cycles 0,1,2,3,0,1,...

``````matlab
d.blocks={ struct('id','c','type','counterFreeRunning','inputs',0,'outputs',1,'params',struct('NumBits',2)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:source.counterLimited>)[counterLimited];, #nlink(<nflow_blocks:source.repeatingSequenceStair>)[repeatingSequenceStair];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
