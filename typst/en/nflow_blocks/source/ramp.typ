#import "../nelson_help.typ": *

= ramp <nflow_blocks:source.ramp>


#block-icon(image("ramp.svg"))

Generates a ramp beginning at start.

== Syntax

- #raw("Block type: ramp");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Generates a ramp beginning at start.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("ramp");], 
  [Label], [Ramp], 
)
  #strong[Description];

 Generates a ramp signal with slope starting at time start.

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
  [#raw("slope");], [1], 
  [#raw("start");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("slope");
- #raw("start"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [ramp], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- Before start, output is 0; at and after start, output is slope \* (t - start). #strong[Equation or Rule];

 #latex("y = \\begin{cases} slope\\,(t - start), & t \\ge start \\\\ 0, & t < start \\end{cases}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/ramp.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.step>)[step];, #nlink(<nflow_blocks:source.sine>)[sine];, #nlink(<nflow_blocks:source.clock>)[clock];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
