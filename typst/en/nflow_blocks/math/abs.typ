#import "../nelson_help.typ": *

= abs <nflow_blocks:math.abs>


#block-icon(image("abs.svg"))

Outputs the absolute value of its input.

== Syntax

- #raw("Block type: abs");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs the absolute value of its input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("abs");], 
  [Label], [Abs], 
)
  #strong[Description];

 Absolute value block. Outputs the absolute value of the input.

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

 No block parameters are declared in the manifest.

 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [abs], 
  [Family], [Math blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires the first input port to be connected.
- Computes abs(u) and leaves the previous output unchanged when the required input is absent. #strong[Equation or Rule];

 #latex("y = |u|"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/abs.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.negate>)[negate];, #nlink(<nflow_blocks:math.min>)[min];, #nlink(<nflow_blocks:math.max>)[max];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
