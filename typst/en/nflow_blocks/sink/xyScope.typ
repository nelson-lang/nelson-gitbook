#import "../nelson_help.typ": *

= xyScope <nflow_blocks:sink.xyScope>


#block-icon(image("xyScope.svg"))

Stores paired X\/Y samples for display.

== Syntax

- #raw("Block type: xyScope");

== Input argument

/ input ports: 2 input port(s) declared.

== Description

Stores paired X\/Y samples for display.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sink blocks], 
  [Type], [#raw("xyScope");], 
  [Label], [XY Scope], 
)
  #strong[Description];

 XY plot scope: plots two inputs against each other (X vs Y) to visualize phase portraits or Lissajous curves.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=50], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=110], 
)
 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("xMin");], [], 
  [#raw("xMax");], [], 
  [#raw("yMin");], [], 
  [#raw("yMax");], [], 
  [#raw("width");], [220], 
  [#raw("height");], [160], 
  [#raw("showTickLabels");], [false], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("xMin");
- #raw("xMax");
- #raw("yMin");
- #raw("yMax");
- #raw("width");
- #raw("height");
- #raw("showTickLabels"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [xyScope], 
  [Family], [Sink blocks], 
  [Rendered size], [220 x 160], 
  [Phases], [INIT, AFTER\_STEP], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears xSeries and ySeries.
- AFTER\_STEP appends input 1 to xSeries and input 2 to ySeries; missing inputs append NaN.
- The block has no outputs. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/xyScope.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.xyzScope>)[xyzScope];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
