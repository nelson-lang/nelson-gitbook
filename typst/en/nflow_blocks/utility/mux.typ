#import "../nelson_help.typ": *

= mux <nflow_blocks:utility.mux>


#block-icon(image("mux.svg"))

Groups multiple input routes into one output route.

== Syntax

- #raw("Block type: mux");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Groups multiple input routes into one output route.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("mux");], 
  [Label], [Mux], 
)
  #strong[Description];

 Virtual routing block that multiplexes several input ports onto a single output. The mux block performs no mathematical computation - it is a wiring convenience used to group and re-route signals.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=10], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=30], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=8, y\=20], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("inputs");], [2], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("inputs"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [mux], 
  [Family], [Utility blocks], 
  [Rendered size], [8 x 40], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- The inputs parameter controls the exposed input count.
- Used as a graph routing utility rather than a stateful numeric transform. #strong[Equation or Rule];

 output route carries configured inputs

 #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


== See also

#nlink(<nflow_blocks:utility.demux>)[demux];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
