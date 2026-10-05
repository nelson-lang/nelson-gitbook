#import "../nelson_help.typ": *

= not <nflow_blocks:logic.not>


#block-icon(image("not.svg"))

Outputs the logical negation of one input.

== Syntax

- #raw("Block type: not");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs the logical negation of one input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic blocks], 
  [Type], [#raw("not");], 
  [Label], [NOT], 
)
  #strong[Description];

 Logical NOT block. Returns 1.0 when input is zero, otherwise 0.0.

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
  [Block type], [not], 
  [Family], [Logic blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic boolean block.
- Numeric nonzero values are true. #strong[Equation or Rule];

 #latex("y = \\neg\\operatorname{bool}(u)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/not.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:logic.and>)[and];, #nlink(<nflow_blocks:logic.or>)[or];, #nlink(<nflow_blocks:logic.xor>)[xor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
