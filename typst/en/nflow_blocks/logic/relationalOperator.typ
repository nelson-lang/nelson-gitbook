#import "../nelson_help.typ": *

= relationalOperator <nflow_blocks:logic.relationalOperator>


#block-icon(image("relationalOperator.svg"))

Compares two input signals.

== Syntax

- #raw("Block type: relationalOperator");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Compares two input signals.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic blocks], 
  [Type], [#raw("relationalOperator");], 
  [Label], [Relational], 
)
  #strong[Description];

 Compares two input signals and outputs 1 when the comparison is true, otherwise 0.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=100, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("operator");], [ge], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("operator"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [relationalOperator], 
  [Family], [Logic blocks], 
  [Rendered size], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires input 1.
- Supported operators are ge, gt, and ne; unknown values fall back to ge.
- Input 2 defaults to 0 when unconnected. #strong[Equation or Rule];

 #latex("y = \\operatorname{compare}(u_1,\\,u_2,\\,operator)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/relationalOperator.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];, #nlink(<nflow_blocks:logic.compareToZero>)[compareToZero];, #nlink(<nflow_blocks:utility.switch>)[switch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
