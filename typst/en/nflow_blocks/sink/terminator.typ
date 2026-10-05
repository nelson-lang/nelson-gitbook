#import "../nelson_help.typ": *

= terminator <nflow_blocks:sink.terminator>


#block-icon(image("terminator.svg"))

Consumes an intentionally unused signal.

== Syntax

- #raw("Block type: terminator");

== Input argument

/ input ports: 1 input port(s) declared.

== Description

Consumes an intentionally unused signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sink blocks], 
  [Type], [#raw("terminator");], 
  [Label], [Terminator], 
)
  #strong[Description];

 Consumes a signal that is intentionally unused.

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

 No block parameters are declared in the manifest.

 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [terminator], 
  [Family], [Sink blocks], 
  [Rendered size], [40 x 40], 
  [Phases], [none], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- No computation and no output ports.
- Used to make unused signal ends explicit. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/terminator.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:sink.display>)[display];, #nlink(<nflow_blocks:sink.scope>)[scope];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
