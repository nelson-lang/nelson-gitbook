#import "../nelson_help.typ": *

= difference <nflow_blocks:discrete.difference>


#block-icon(image("difference.svg"))

Outputs the difference from the previous input.

== Syntax

- #raw("Block type: difference");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs the difference from the previous input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete blocks], 
  [Type], [#raw("difference");], 
  [Label], [Difference], 
)
  #strong[Description];

 Outputs the difference between the current input and the previous input sample.

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
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("initial"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [difference], 
  [Family], [Discrete blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT stores initial as the previous input.
- OUTPUT emits u - previous. UPDATE stores the current input. #strong[Equation or Rule];

 #latex("y_k = u_k - u_{k-1}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/difference.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:continuous.derivative>)[derivative];, #nlink(<nflow_blocks:discrete.ddelay>)[ddelay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
