#import "../nelson_help.typ": *

= constant <nflow_blocks:source.constant>


#block-icon(image("constant.svg"))

Outputs a constant numeric value.

== Syntax

- #raw("Block type: constant");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs a constant numeric value.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("constant");], 
  [Label], [Constant], 
)
  #strong[Description];

 Represents a constant numeric source. Outputs the configured value.

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

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
  [#raw("value");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("value"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [constant], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- value is resolved numerically and written each output phase. #strong[Equation or Rule];

 #latex("y = value"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/constant.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.step>)[step];, #nlink(<nflow_blocks:source.ramp>)[ramp];, #nlink(<nflow_blocks:source.sine>)[sine];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
