#import "../nelson_help.typ": *

= xor <nflow_blocks:logic.xor>


#block-icon(image("xor.svg"))

Outputs the logical exclusive OR of two inputs.

== Syntax

- #raw("Block type: xor");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs the logical exclusive OR of two inputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic blocks], 
  [Type], [#raw("xor");], 
  [Label], [XOR], 
)
  #strong[Description];

 Logical exclusive-or block. Returns 1.0 if inputs differ, otherwise 0.0.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=20], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=60], 
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
  [Block type], [xor], 
  [Family], [Logic blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic boolean block.
- The output is true when exactly one input is true. #strong[Equation or Rule];

 #latex("y = \\operatorname{xor}(\\operatorname{bool}(u_1),\\operatorname{bool}(u_2))"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/xor.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:logic.and>)[and];, #nlink(<nflow_blocks:logic.or>)[or];, #nlink(<nflow_blocks:logic.not>)[not];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
