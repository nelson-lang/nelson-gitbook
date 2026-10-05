#import "../nelson_help.typ": *

= lpf <nflow_blocks:continuous.lpf>


#block-icon(image("lpf.svg"))

Applies a first-order low-pass filter.

== Syntax

- #raw("Block type: lpf");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Applies a first-order low-pass filter.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("lpf");], 
  [Label], [LPF], 
)
  #strong[Description];

 A first-order low-pass filter. Filters high-frequency components of the input.

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
  [#raw("cutoff");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("cutoff"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [lpf], 
  [Family], [Continuous blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears stored output.
- OUTPUT emits the stored output. UPDATE applies the discrete low-pass update.
- If cutoff is not positive, the output follows the input. #strong[Equation or Rule];

 #latex("y_k = y_{k-1} + \\alpha\\,(u_k - y_{k-1})"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/lpf.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.hpf>)[hpf];, #nlink(<nflow_blocks:continuous.tf>)[tf];, #nlink(<nflow_blocks:continuous.derivative>)[derivative];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
