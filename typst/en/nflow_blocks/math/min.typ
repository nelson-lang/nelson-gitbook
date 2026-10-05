#import "../nelson_help.typ": *

= min <nflow_blocks:math.min>


#block-icon(image("min.svg"))

Outputs the minimum of two inputs.

== Syntax

- #raw("Block type: min");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs the minimum of two inputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("min");], 
  [Label], [Min], 
)
  #strong[Description];

 Returns the minimum of two inputs.

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
  [Block type], [min], 
  [Family], [Math blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires input 1.
- Input 2 defaults to 0 when unconnected. #strong[Equation or Rule];

 #latex("y = \\min(u_1, u_2)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/min.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.max>)[max];, #nlink(<nflow_blocks:nonlinear.saturation>)[saturation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
