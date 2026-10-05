#import "../nelson_help.typ": *

= deadZone <nflow_blocks:nonlinear.deadZone>


#block-icon(image("deadZone.svg"))

Suppresses values inside a dead zone.

== Syntax

- #raw("Block type: deadZone");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Suppresses values inside a dead zone.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Nonlinear blocks], 
  [Type], [#raw("deadZone");], 
  [Label], [Dead Zone], 
)
  #strong[Description];

 Suppresses small input values inside a configured interval.

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
  [#raw("min");], [-1], 
  [#raw("max");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("min");
- #raw("max"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [deadZone], 
  [Family], [Nonlinear blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires the first input port.
- Inputs below min output u - min, inputs above max output u - max, and values inside the band output 0. #strong[Equation or Rule];

 #latex("y = 0\\quad \\mathrm{for}\\quad min \\le u \\le max"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/deadZone.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.backlash>)[backlash];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
