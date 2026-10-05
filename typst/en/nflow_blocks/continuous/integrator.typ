#import "../nelson_help.typ": *

= integrator <nflow_blocks:continuous.integrator>


#block-icon(image("integrator.svg"))

Integrates the input over time with optional clamps.

== Syntax

- #raw("Block type: integrator");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Integrates the input over time with optional clamps.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("integrator");], 
  [Label], [Integrator], 
)
  #strong[Description];

 The Integrator block integrates its input over time. It maintains internal state and produces the integrated output.

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
  [#raw("initial");], [0], 
  [#raw("min");], [-inf], 
  [#raw("max");], [inf], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("initial");
- #raw("min");
- #raw("max"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [integrator], 
  [Family], [Continuous blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clamps initial between min and max.
- OUTPUT emits the current state. UPDATE adds dt \* input and clamps the result.
- Native defaults for min and max are negative and positive infinity. #strong[Equation or Rule];

 #latex("x_{k+1} = \\operatorname{clamp}(x_k + dt\\,u_k,\\,min,\\,max),\\quad y = x"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/integrator.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.derivative>)[derivative];, #nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace];, #nlink(<nflow_blocks:continuous.tf>)[tf];, #nlink(<nflow_blocks:continuous.pid>)[pid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
