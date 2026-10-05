#import "../nelson_help.typ": *

= labelSink <nflow_blocks:sink.labelSink>


#block-icon(image("labelSink.svg"))

Names an input signal for label routing.

== Syntax

- #raw("Block type: labelSink");

== Input argument

/ input ports: 1 input port(s) declared.

== Description

Names an input signal for label routing.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sink blocks], 
  [Type], [#raw("labelSink");], 
  [Label], [Label Sink], 
)
  #strong[Description];

 Receives a named label input and optionally shows a node in the diagram. Matches Label Source by name for wiring.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=20], 
)
 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("name");], [x], 
  [#raw("showNode");], [true], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("name");
- #raw("showNode"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [labelSink], 
  [Family], [Sink blocks], 
  [Rendered size], [40 x 40], 
  [Phases], [none], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- The handler performs no numeric computation.
- Subsystem scheduling indexes labelSink blocks by name so matching labelSource blocks can read their input. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/labelSink.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.labelSource>)[labelSource];, #nlink(<nflow_blocks:sink.display>)[display];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
