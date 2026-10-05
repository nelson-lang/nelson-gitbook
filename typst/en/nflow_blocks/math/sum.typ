#import "../nelson_help.typ": *

= sum <nflow_blocks:math.sum>


#block-icon(image("sum.svg"))

Adds connected inputs with configurable signs.

== Syntax

- #raw("Block type: sum");

== Input argument

/ input ports: 3 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Adds connected inputs with configurable signs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("sum");], 
  [Label], [Sum], 
)
  #strong[Description];

 Adds up several inputs with optional signs per input.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=-30, y\=10], 
  [Port\_2], [Numeric signal read by the block.], [top], [x\=10, y\=-30], 
  [Port\_3], [Numeric signal read by the block.], [bottom], [x\=10, y\=50], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=50, y\=10], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("signs");], [\[1, 1, 1\]], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("signs"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [sum], 
  [Family], [Math blocks], 
  [Rendered size], [20 x 20], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block.
- signs provides one sign per input; missing signs default to +1, and unconnected ports are skipped. #strong[Equation or Rule];

 #latex("y = \\sum_i sign_i\\,u_i"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/sum.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.gain>)[gain];, #nlink(<nflow_blocks:math.bias>)[bias];, #nlink(<nflow_blocks:math.negate>)[negate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
