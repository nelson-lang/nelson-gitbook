#import "../nelson_help.typ": *

= derivative <nflow_blocks:continuous.derivative>


#block-icon(image("derivative.svg"))

Estimates the time derivative of an input.

== Syntax

- #raw("Block type: derivative");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Estimates the time derivative of an input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("derivative");], 
  [Label], [Derivative], 
)
  #strong[Description];

 Estimates the derivative (time-rate-of-change) of the input signal.

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

 No block parameters are declared in the manifest.

 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [derivative], 
  [Family], [Continuous blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears the previous input and derivative output.
- OUTPUT emits the stored derivative. UPDATE computes (u - previous) \/ dt and stores u.
- If dt is not positive, the update uses 0. #strong[Equation or Rule];

 #latex("y_k = \\frac{u_k - u_{k-1}}{dt}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/derivative.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:continuous.hpf>)[hpf];, #nlink(<nflow_blocks:continuous.lpf>)[lpf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
