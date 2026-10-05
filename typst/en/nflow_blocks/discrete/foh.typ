#import "../nelson_help.typ": *

= foh <nflow_blocks:discrete.foh>


#block-icon(image("foh.svg"))

First-order hold for sampled input values.

== Syntax

- #raw("Block type: foh");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

First-order hold for sampled input values.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete blocks], 
  [Type], [#raw("foh");], 
  [Label], [FOH], 
)
  #strong[Description];

 First-Order Hold: performs linear interpolation between sample instants for discrete-time signals.

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
  [#raw("ts");], [0.1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("ts"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [foh], 
  [Family], [Discrete blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears previous\/current samples and schedules sampling.
- OUTPUT emits the interpolated held output. UPDATE samples input at ts.
- ts is clamped to at least 0.001. #strong[Equation or Rule];

 linear interpolation between sampled values

 #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/foh.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:discrete.zoh>)[zoh];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
