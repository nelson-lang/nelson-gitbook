#import "../nelson_help.typ": *

= rate <nflow_blocks:nonlinear.rate>


#block-icon(image("rate.svg"))

Limits rising and falling signal rates.

== Syntax

- #raw("Block type: rate");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Limits rising and falling signal rates.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Nonlinear blocks], 
  [Type], [#raw("rate");], 
  [Label], [Rate Lim.], 
)
  #strong[Description];

 Limits the rate of change (rise\/fall) of the input signal.

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
  [#raw("rise");], [1], 
  [#raw("fall");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("rise");
- #raw("fall"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [rate], 
  [Family], [Nonlinear blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT sets the stored output to 0.
- OUTPUT emits the stored value. UPDATE clamps input between previous - fall\*dt and previous + rise\*dt.
- rise and fall are clamped to nonnegative values. #strong[Equation or Rule];

 #latex("y = \\operatorname{clamp}(u,\\,y_{prev} - fall\\,dt,\\,y_{prev} + rise\\,dt)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/rate.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.quantizer>)[quantizer];, #nlink(<nflow_blocks:continuous.delay>)[delay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
