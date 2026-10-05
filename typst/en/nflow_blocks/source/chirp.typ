#import "../nelson_help.typ": *

= chirp <nflow_blocks:source.chirp>


#block-icon(image("chirp.svg"))

Generates a sine chirp from f0 to f1.

== Syntax

- #raw("Block type: chirp");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Generates a sine chirp from f0 to f1.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("chirp");], 
  [Label], [Chirp], 
)
  #strong[Description];

 Frequency-swept sinusoidal signal (chirp) from f0 to f1 over a duration.

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

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
  [#raw("f0");], [1], 
  [#raw("f1");], [10], 
  [#raw("k");], [1], 
  [#raw("phase");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("f0");
- #raw("f1");
- #raw("k");
- #raw("phase"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [chirp], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- The native runtime derives k from f0, f1, and max(t1, 0.001).
- The manifest k parameter is visual\/configuration metadata; the native handler computes the sweep rate. #strong[Equation or Rule];

 #latex("y = amp\\,\\sin\\left(2\\pi\\left(f_0 t + \\frac{1}{2} k t^2\\right)\\right)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/chirp.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.sine>)[sine];, #nlink(<nflow_blocks:source.noise>)[noise];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
