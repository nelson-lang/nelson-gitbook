#import "../nelson_help.typ": *

= switch <nflow_blocks:utility.switch>


#block-icon(image("switch.svg"))

Selects between top and bottom inputs using a condition input.

== Syntax

- #raw("Block type: switch");

== Input argument

/ input ports: 3 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Selects between top and bottom inputs using a condition input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("switch");], 
  [Label], [Switch], 
)
  #strong[Description];

 Conditional selector block: chooses between inputs based on a threshold and comparison condition.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=0], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=40], 
  [Port\_3], [Numeric signal read by the block.], [left], [x\=0, y\=80], 
)
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
  [#raw("condition");], [ge], 
  [#raw("threshold");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("condition");
- #raw("threshold"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [switch], 
  [Family], [Utility blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block.
- Input 1 is top data, input 2 is condition value, input 3 is bottom data.
- condition supports gt, ne, and ge; unknown values fall back to ge.
- C code generation follows condition; Rust code generation currently treats the condition input as nonzero\/zero. #strong[Equation or Rule];

 #latex("y = \\begin{cases} u_1, & \\operatorname{condition}(u_2, threshold) \\\\ u_3, & \\mathrm{otherwise} \\end{cases}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/switch.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];, #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator];, #nlink(<nflow_blocks:utility.toggleSwitch>)[toggleSwitch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
