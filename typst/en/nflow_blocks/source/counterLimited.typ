#import "../nelson_help.typ": *

= counterLimited <nflow_blocks:source.counterLimited>


#block-icon(image("counterLimited.svg"))

Up-counter that wraps back to 0 once it reaches UpperLimit.

== Syntax

- #raw("Block type: counterLimited");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Up-counter that wraps back to 0 once it reaches UpperLimit.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source], 
  [Type], [#raw("counterLimited");], 
  [Label], [Counter Limited], 
)
  #strong[Description];

 An up-counter with no input that wraps at a configurable ceiling. Starts at 0 and increments by 1 at every sample step; once it reaches #raw("UpperLimit"); it wraps back to 0 on the next step, so the output sweeps 0, 1, ..., UpperLimit, 0, ...

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
  [#raw("UpperLimit");], [7], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [counterLimited], 
  [Family], [Source], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= count. UPDATE: count \= (count \>\= UpperLimit) ? 0 : count + 1. #strong[Equation or Rule];

 #latex("y_k = k \\bmod (\\text{UpperLimit}+1)"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/counterLimited.cpp", title: "Runtime")


== Example

A counter limited to 3 cycles 0,1,2,3,0,1,...

``````matlab
d.blocks={ struct('id','c','type','counterLimited','inputs',0,'outputs',1,'params',struct('UpperLimit',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:source.counterFreeRunning>)[counterFreeRunning];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
