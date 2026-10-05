#import "../nelson_help.typ": *

= tf <nflow_blocks:continuous.tf>


#block-icon(image("tf.svg"))

Implements a continuous transfer function approximation.

== Syntax

- #raw("Block type: tf");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Implements a continuous transfer function approximation.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("tf");], 
  [Label], [Transfer Fn], 
)
  #strong[Description];

 A continuous-time transfer function block defined by numerator and denominator polynomials. Useful for representing linear dynamics in the Laplace domain.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=85, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("num");], [\[3\]], 
  [#raw("den");], [\[1, 3\]], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("num");
- #raw("den"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [tf], 
  [Family], [Continuous blocks], 
  [Rendered size], [85 x 80], 
  [Phases], [INIT, OUTPUT, ALGEBRAIC, UPDATE], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT normalizes coefficients and clears histories.
- OUTPUT emits direct-feedthrough\/stored output; ALGEBRAIC is present for direct-feedthrough solving.
- UPDATE advances internal histories with input and dt. #strong[Equation or Rule];

 #latex("y \\approx \\frac{num(s)}{den(s)}\\,u"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/tf.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace];, #nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:discrete.dtf>)[dtf];, #nlink(<nflow_blocks:continuous.lpf>)[lpf];, #nlink(<nflow_blocks:continuous.hpf>)[hpf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
