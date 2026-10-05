#import "../nelson_help.typ": *

= xyzScope <nflow_blocks:sink.xyzScope>


#block-icon(image("xyzScope.svg"))

Stores X\/Y\/Z samples for 3D display.

== Syntax

- #raw("Block type: xyzScope");

== Input argument

/ input ports: 3 input port(s) declared.

== Description

Stores X\/Y\/Z samples for 3D display.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sink blocks], 
  [Type], [#raw("xyzScope");], 
  [Label], [XYZ Scope], 
)
  #strong[Description];

 3D scope for plotting three time-series components. Includes rotation parameters for 3D view.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=50], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=90], 
  [Port\_3], [Numeric signal read by the block.], [left], [x\=0, y\=130], 
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
  [#raw("zMin");], [], 
  [#raw("zMax");], [], 
  [#raw("width");], [220], 
  [#raw("height");], [180], 
  [#raw("rotationX");], [30], 
  [#raw("rotationY");], [45], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("xMin");
- #raw("xMax");
- #raw("yMin");
- #raw("yMax");
- #raw("zMin");
- #raw("zMax");
- #raw("width");
- #raw("height");
- #raw("rotationX");
- #raw("rotationY"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [xyzScope], 
  [Family], [Sink blocks], 
  [Rendered size], [220 x 180], 
  [Phases], [INIT, AFTER\_STEP], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears xSeries, ySeries, and zSeries.
- AFTER\_STEP appends the three inputs; missing inputs append NaN.
- The block has no outputs. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/xyzScope.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.xyScope>)[xyScope];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
