#import "../nelson_help.typ": *

= stateSpace <nflow_blocks:continuous.stateSpace>


#block-icon(image("stateSpace.svg"))

Implements a scalar continuous state-space model.

== Syntax

- #raw("Block type: stateSpace");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Implements a scalar continuous state-space model.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("stateSpace");], 
  [Label], [State-Space], 
)
  #strong[Description];

 Continuous-time state-space block defined by matrices A, B, C, D. Represents linear state-space dynamics.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=160, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("A");], [1], 
  [#raw("B");], [1], 
  [#raw("C");], [1], 
  [#raw("D");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("A");
- #raw("B");
- #raw("C");
- #raw("D"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [stateSpace], 
  [Family], [Continuous blocks], 
  [Rendered size], [160 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears state and output.
- OUTPUT emits C\*x + D\*u. UPDATE advances x with Euler integration x +\= dt\*(A\*x + B\*u). #strong[Equation or Rule];

 #latex("\\frac{dx}{dt} = A x + B u,\\quad y = C x + D u"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/stateSpace.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.tf>)[tf];, #nlink(<nflow_blocks:discrete.dstateSpace>)[dstateSpace];, #nlink(<nflow_blocks:continuous.integrator>)[integrator];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
