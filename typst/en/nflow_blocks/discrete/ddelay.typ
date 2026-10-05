#import "../nelson_help.typ": *

= ddelay <nflow_blocks:discrete.ddelay>


#block-icon(image("ddelay.svg"))

Delays a sampled signal by an integer number of steps.

== Syntax

- #raw("Block type: ddelay");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Delays a sampled signal by an integer number of steps.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete blocks], 
  [Type], [#raw("ddelay");], 
  [Label], [Discrete Delay], 
)
  #strong[Description];

 Delays the input by a number of discrete steps.

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
  [#raw("steps");], [1], 
  [#raw("ts");], [0.1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("steps");
- #raw("ts"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [ddelay], 
  [Family], [Discrete blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT allocates a queue sized from steps.
- OUTPUT emits the oldest queued value. UPDATE samples at ts and advances the queue.
- steps is at least 1 and ts is at least 0.001. #strong[Equation or Rule];

 #latex("y_k = u_{k-steps}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/ddelay.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.delay>)[delay];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:discrete.zoh>)[zoh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
