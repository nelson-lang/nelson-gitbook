#import "../nelson_help.typ": *

= quantizer <nflow_blocks:nonlinear.quantizer>


#block-icon(image("quantizer.svg"))

Rounds the input to the nearest interval.

== Syntax

- #raw("Block type: quantizer");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Rounds the input to the nearest interval.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Nonlinear blocks], 
  [Type], [#raw("quantizer");], 
  [Label], [Quantizer], 
)
  #strong[Description];

 Rounds the input to the nearest multiple of a configured interval.

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
  [#raw("interval");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("interval"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [quantizer], 
  [Family], [Nonlinear blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block. Requires input 1.
- interval is converted to abs(interval); values below 1e-12 are replaced by 1. #strong[Equation or Rule];

 #latex("y = interval\\,\\operatorname{round}\\left(\\frac{u}{interval}\\right)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/quantizer.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:nonlinear.rate>)[rate];, #nlink(<nflow_blocks:nonlinear.saturation>)[saturation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
