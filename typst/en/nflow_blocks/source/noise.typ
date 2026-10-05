#import "../nelson_help.typ": *

= noise <nflow_blocks:source.noise>


#block-icon(image("noise.svg"))

Generates deterministic pseudo-random noise.

== Syntax

- #raw("Block type: noise");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Generates deterministic pseudo-random noise.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("noise");], 
  [Label], [Noise], 
)
  #strong[Description];

 Generates white noise with configurable amplitude.

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
  [#raw("amp");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("amp"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [noise], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- Updates rngState with a linear congruential generator and maps it to approximately \[-amp, amp\].
- The initial rngState is 1. #strong[Equation or Rule];

 #latex("y = amp\\left(\\frac{2\\,rng}{4294967295} - 1\\right)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/noise.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.sine>)[sine];, #nlink(<nflow_blocks:source.chirp>)[chirp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
