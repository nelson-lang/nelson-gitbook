#import "../nelson_help.typ": *

= compareToConstant <nflow_blocks:logic.compareToConstant>


#block-icon(image("compareToConstant.svg"))

Compares one input to a constant threshold.

== Syntax

- #raw("Block type: compareToConstant");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Compares one input to a constant threshold.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic blocks], 
  [Type], [#raw("compareToConstant");], 
  [Label], [Compare Const], 
)
  #strong[Description];

 Compares the input signal with a configured constant threshold and outputs 1 when the comparison is true, otherwise 0.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=100, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("operator");], [ge], 
  [#raw("threshold");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("operator");
- #raw("threshold"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [compareToConstant], 
  [Family], [Logic blocks], 
  [Rendered size], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires the first input port.
- Supported operators are ge, gt, and ne; unknown values fall back to ge.
- threshold is resolved numerically. #strong[Equation or Rule];

 #latex("y = \\operatorname{compare}(u,\\,threshold,\\,operator)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/compareToConstant.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:logic.compareToZero>)[compareToZero];, #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
