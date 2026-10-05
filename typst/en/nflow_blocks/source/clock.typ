#import "../nelson_help.typ": *

= clock <nflow_blocks:source.clock>


#block-icon(image("clock.svg"))

Outputs the current simulation time.

== Syntax

- #raw("Block type: clock");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs the current simulation time.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("clock");], 
  [Label], [Clock], 
)
  #strong[Description];

 Outputs the current simulation time in seconds.

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
  [#raw("displayTime");], [false], 
  [#raw("decimation");], [10], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("displayTime");
- #raw("decimation"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [clock], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- Writes ctx.t directly to the output.
- displayTime and decimation affect icon display only. #strong[Equation or Rule];

 #latex("y = t"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/clock.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.ramp>)[ramp];, #nlink(<nflow_blocks:source.sine>)[sine];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
