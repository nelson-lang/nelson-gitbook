#import "../nelson_help.typ": *

= backlash <nflow_blocks:nonlinear.backlash>


#block-icon(image("backlash.svg"))

Models backlash with a dead band around the previous output.

== Syntax

- #raw("Block type: backlash");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Models backlash with a dead band around the previous output.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Nonlinear blocks], 
  [Type], [#raw("backlash");], 
  [Label], [Backlash], 
)
  #strong[Description];

 Models mechanical backlash (deadband \/ play) behavior. The output sticks until input moves past a width.

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

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("width");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("width"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [backlash], 
  [Family], [Nonlinear blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears the stored output.
- OUTPUT emits the stored value. UPDATE moves only when the input leaves width \/ 2 around the stored value.
- width is clamped to a nonnegative value. #strong[Equation or Rule];

 y follows u outside the +\/- width\/2 band

 #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/backlash.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];, #nlink(<nflow_blocks:nonlinear.saturation>)[saturation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
