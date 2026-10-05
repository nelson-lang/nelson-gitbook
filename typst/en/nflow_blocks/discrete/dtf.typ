#import "../nelson_help.typ": *

= dtf <nflow_blocks:discrete.dtf>


#block-icon(image("dtf.svg"))

Implements a discrete transfer function.

== Syntax

- #raw("Block type: dtf");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Implements a discrete transfer function.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete blocks], 
  [Type], [#raw("dtf");], 
  [Label], [Discrete TF], 
)
  #strong[Description];

 Discrete-time transfer function block (z-domain) defined by numerator and denominator polynomials and a sample time.

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
  [#raw("num");], [\[1\]], 
  [#raw("den");], [\[1, -0.5\]], 
  [#raw("ts");], [0.1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("num");
- #raw("den");
- #raw("ts"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dtf], 
  [Family], [Discrete blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT normalizes numerator and denominator by den\[0\] and clears histories.
- OUTPUT emits the stored output. UPDATE samples at ts, shifts histories, and evaluates the recurrence.
- Empty numerator defaults to \[0\], empty denominator to \[1\], and ts is at least 0.001. #strong[Equation or Rule];

 discrete transfer-function recurrence

 #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/dtf.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:discrete.dstateSpace>)[dstateSpace];, #nlink(<nflow_blocks:continuous.tf>)[tf];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
