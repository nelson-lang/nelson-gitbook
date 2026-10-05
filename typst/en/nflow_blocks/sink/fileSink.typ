#import "../nelson_help.typ": *

= fileSink <nflow_blocks:sink.fileSink>


#block-icon(image("fileSink.svg"))

Represents a file output sink.

== Syntax

- #raw("Block type: fileSink");

== Input argument

/ input ports: 1 input port(s) declared.

== Description

Represents a file output sink.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sink blocks], 
  [Type], [#raw("fileSink");], 
  [Label], [Output File], 
)
  #strong[Description];

 Writes simulation outputs to a CSV file path. Acts as a sink with file output behavior.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=40], 
)
 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("path");], [output.csv], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("path"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [fileSink], 
  [Family], [Sink blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [none], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT: truncates the CSV file (FileName parameter) and writes the header "t,\<id\>" (one column per input element for a vector signal).
- AFTER\_STEP: appends one row per sample (time then input values); the file is opened and closed per phase so a cancelled run keeps every row written so far.
- Generated code carries no file I\/O: the block becomes a model-output column of the generated runner's CSV (tagged with the block id). #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/fileSink.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.display>)[display];, #nlink(<nflow_blocks:source.fileSource>)[fileSource];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
