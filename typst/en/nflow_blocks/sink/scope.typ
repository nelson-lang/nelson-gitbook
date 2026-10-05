#import "../nelson_help.typ": *

= scope <nflow_blocks:sink.scope>


#block-icon(image("scope.svg"))

Stores time-series samples for display.

== Syntax

- #raw("Block type: scope");

== Input argument

/ input ports: 3 input port(s) declared.

== Description

Stores time-series samples for display.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sink blocks], 
  [Type], [#raw("scope");], 
  [Label], [Scope], 
)
  #strong[Description];

 Multi-channel oscilloscope-style visualizer for time-series signals. Shows series over time with optional axis limits.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=40], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=80], 
  [Port\_3], [Numeric signal read by the block.], [left], [x\=0, y\=120], 
)
 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("tMin");], [], 
  [#raw("tMax");], [], 
  [#raw("yMin");], [], 
  [#raw("yMax");], [], 
  [#raw("width");], [220], 
  [#raw("height");], [160], 
  [#raw("showTickLabels");], [false], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("tMin");
- #raw("tMax");
- #raw("yMin");
- #raw("yMax");
- #raw("width");
- #raw("height");
- #raw("showTickLabels"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [scope], 
  [Family], [Sink blocks], 
  [Rendered size], [220 x 160], 
  [Phases], [INIT, AFTER\_STEP], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears stored series.
- AFTER\_STEP appends one value per declared input; missing inputs append NaN.
- The block has no outputs. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/scope.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.xyScope>)[xyScope];, #nlink(<nflow_blocks:sink.xyzScope>)[xyzScope];, #nlink(<nflow_blocks:sink.display>)[display];, #nlink(<nflow_blocks:sink.fileSink>)[fileSink];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
