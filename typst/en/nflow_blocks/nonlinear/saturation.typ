#import "../nelson_help.typ": *

= saturation <nflow_blocks:nonlinear.saturation>


#block-icon(image("saturation.svg"))

Clamps the input between min and max.

== Syntax

- #raw("Block type: saturation");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Clamps the input between min and max.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Nonlinear blocks], 
  [Type], [#raw("saturation");], 
  [Label], [Saturation], 
)
  #strong[Description];

 Clamps the input between min and max values.

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
  [Block type], [saturation], 
  [Family], [Nonlinear blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires input 1.
- min and max are resolved numerically; native defaults are negative and positive infinity. #strong[Equation or Rule];

 #latex("y = \\operatorname{clamp}(u,\\,min,\\,max)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/saturation.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];, #nlink(<nflow_blocks:nonlinear.rate>)[rate];, #nlink(<nflow_blocks:math.min>)[min];, #nlink(<nflow_blocks:math.max>)[max];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
