#import "../nelson_help.typ": *

= fileSource <nflow_blocks:source.fileSource>


#block-icon(image("fileSource.svg"))

Outputs values from preloaded times and values arrays.

== Syntax

- #raw("Block type: fileSource");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs values from preloaded times and values arrays.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("fileSource");], 
  [Label], [File], 
)
  #strong[Description];

 Reads values from a CSV file and supplies them as a time series source.

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
  [#raw("path");], [], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("path"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [fileSource], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT copies numeric params.times and params.values into state and resets the index.
- OUTPUT returns 0 when data is empty; otherwise it advances to the latest time not greater than t.
- path is configuration metadata for loading; the native handler consumes preloaded arrays. #strong[Equation or Rule];

 #latex("y = values_{index(t)}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/fileSource.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.fileSink>)[fileSink];, #nlink(<nflow_blocks:source.constant>)[constant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
