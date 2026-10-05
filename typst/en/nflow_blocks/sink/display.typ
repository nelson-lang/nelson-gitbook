#import "../nelson_help.typ": *

= display <nflow_blocks:sink.display>


#block-icon(image("display.svg"))

Stores the latest input value for display.

== Syntax

- #raw("Block type: display");

== Input argument

/ input ports: 1 input port(s) declared.

== Description

Stores the latest input value for display.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sink blocks], 
  [Type], [#raw("display");], 
  [Label], [Display], 
)
  #strong[Description];

 The Display block shows a single scalar value during simulation. It's intended for quick inspection of signals (numeric outputs) in the diagram.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=30], 
)
 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("label");], [Display], 
  [#raw("format");], [short], 
  [#raw("decimation");], [1], 
  [#raw("floatingDisplay");], [false], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("label");
- #raw("format");
- #raw("decimation");
- #raw("floatingDisplay"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [display], 
  [Family], [Sink blocks], 
  [Rendered size], [120 x 60], 
  [Phases], [INIT, AFTER\_STEP], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears the stored scalar.
- AFTER\_STEP samples input 1 according to decimation; values below 1 behave as 1.
- The block has no output ports. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/display.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.terminator>)[terminator];, #nlink(<nflow_blocks:sink.fileSink>)[fileSink];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
