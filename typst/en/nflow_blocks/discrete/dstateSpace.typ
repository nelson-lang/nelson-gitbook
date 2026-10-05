#import "../nelson_help.typ": *

= dstateSpace <nflow_blocks:discrete.dstateSpace>


#block-icon(image("dstateSpace.svg"))

Implements a scalar discrete state-space model.

== Syntax

- #raw("Block type: dstateSpace");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Implements a scalar discrete state-space model.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete blocks], 
  [Type], [#raw("dstateSpace");], 
  [Label], [Discrete State-Space], 
)
  #strong[Description];

 Discrete-time state-space block with matrices A, B, C, D and sample time ts.

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
  [#raw("A");], [1], 
  [#raw("B");], [1], 
  [#raw("C");], [1], 
  [#raw("D");], [0], 
  [#raw("ts");], [0.1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("A");
- #raw("B");
- #raw("C");
- #raw("D");
- #raw("ts"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dstateSpace], 
  [Family], [Discrete blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT resets state, output, next sample time, and ts.
- OUTPUT emits the stored output. UPDATE runs at sample times.
- At update, y \= C\*x + D\*u and x\_next \= A\*x + B\*u; ts is at least 0.001. #strong[Equation or Rule];

 #latex("y_k = Cx_k + Du_k,\\quad x_{k+1} = Ax_k + Bu_k"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/dstateSpace.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:discrete.dtf>)[dtf];, #nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
