#import "../nelson_help.typ": *

= demux <nflow_blocks:utility.demux>


#block-icon(image("demux.svg"))

Routes one input to multiple output ports.

== Syntax

- #raw("Block type: demux");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 2 output port(s) declared.

== Description

Routes one input to multiple output ports.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("demux");], 
  [Label], [Demux], 
)
  #strong[Description];

 Virtual routing block that splits a single input into multiple output ports. The demux block performs no computation - it is a wiring convenience used to fan out signals and organise connections.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=20], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=8, y\=10], 
  [Port\_2], [Numeric signal produced by the block.], [right], [x\=8, y\=30], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("outputs");], [2], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("outputs"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [demux], 
  [Family], [Utility blocks], 
  [Rendered size], [8 x 40], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- The manifest controls the output count.
- The block is a graph routing utility rather than a stateful numeric transform. #strong[Equation or Rule];

 #latex("y_i = u"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


== See also

#nlink(<nflow_blocks:utility.mux>)[mux];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
