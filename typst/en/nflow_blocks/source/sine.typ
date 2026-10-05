#import "../nelson_help.typ": *

= sine <nflow_blocks:source.sine>


#block-icon(image("sine.svg"))

Generates a sinusoidal signal.

== Syntax

- #raw("Block type: sine");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Generates a sinusoidal signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("sine");], 
  [Label], [Sine], 
)
  #strong[Description];

 Sinusoidal source with amplitude, frequency and phase.

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
  [#raw("freq");], [1], 
  [#raw("phase");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("amp");
- #raw("freq");
- #raw("phase"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [sine], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- Uses amp, freq, phase, and simulation time. #strong[Equation or Rule];

 #latex("y = amp\\,\\sin(2\\pi\\,freq\\,t + phase)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/sine.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.chirp>)[chirp];, #nlink(<nflow_blocks:source.noise>)[noise];, #nlink(<nflow_blocks:source.clock>)[clock];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
