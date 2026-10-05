#import "../nelson_help.typ": *

= divide <nflow_blocks:math.divide>


#block-icon(image("divide.svg"))

Divides input 1 by input 2.

== Syntax

- #raw("Block type: divide");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Divides input 1 by input 2.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("divide");], 
  [Label], [Divide], 
)
  #strong[Description];

 Divides the first input by the second input.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=30], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=50], 
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
  [Block type], [divide], 
  [Family], [Math blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires the first input port.
- If abs(denominator) is below 1e-12, the previous output is left unchanged. #strong[Equation or Rule];

 #latex("y = \\frac{u_1}{u_2}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/divide.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.mult>)[mult];, #nlink(<nflow_blocks:math.gain>)[gain];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
