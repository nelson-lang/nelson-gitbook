#import "../nelson_help.typ": *

= labelSource <nflow_blocks:source.labelSource>


#block-icon(image("labelSource.svg"))

Reads a signal from a matching labelSink.

== Syntax

- #raw("Block type: labelSource");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Reads a signal from a matching labelSink.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("labelSource");], 
  [Label], [Label], 
)
  #strong[Description];

 Provides a named signal that can be routed to a corresponding Label Sink or exported as an external input label.

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=40, y\=20], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("name");], [x], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("name"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [labelSource], 
  [Family], [Source blocks], 
  [Rendered size], [40 x 40], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block.
- Looks up a labelSink with the same name and forwards that sink input when available.
- If the name or connection is missing, the output is not changed. #strong[Equation or Rule];

 #latex("y = \\mathrm{labeled\\ signal}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/labelSource.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.labelSink>)[labelSink];, #nlink(<nflow_blocks:source.constant>)[constant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
