#import "../nelson_help.typ": *

= unitDelay <nflow_blocks:discrete.unitDelay>


#block-icon(image("unitDelay.svg"))

Delays the input by one update.

== Syntax

- #raw("Block type: unitDelay");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Delays the input by one update.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete blocks], 
  [Type], [#raw("unitDelay");], 
  [Label], [Unit Delay], 
)
  #strong[Description];

 Outputs the previous sample of the input signal.

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
  [Block type], [unitDelay], 
  [Family], [Discrete blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT stores initial.
- OUTPUT emits the stored value. UPDATE stores the current input for the next output phase. #strong[Equation or Rule];

 #latex("y_k = u_{k-1}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/unitDelay.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:discrete.ddelay>)[ddelay];, #nlink(<nflow_blocks:discrete.difference>)[difference];, #nlink(<nflow_blocks:discrete.zoh>)[zoh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
