#import "../nelson_help.typ": *

= delay <nflow_blocks:continuous.delay>


#block-icon(image("delay.svg"))

Delays a signal with a circular buffer.

== Syntax

- #raw("Block type: delay");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Delays a signal with a circular buffer.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("delay");], 
  [Label], [Delay], 
)
  #strong[Description];

 Continuous-time transport delay block. Delays the input signal by a specified time.

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
  [#raw("delay");], [0.1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("delay"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [delay], 
  [Family], [Continuous blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT allocates a buffer from delay \/ dt with at least one sample.
- OUTPUT emits the current delayed buffer value. UPDATE stores the current input and advances the index. #strong[Equation or Rule];

 #latex("y(t) \\approx u(t - delay)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/delay.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:discrete.ddelay>)[ddelay];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:discrete.zoh>)[zoh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
