#import "../nelson_help.typ": *

= busSelector <nflow_blocks:utility.busSelector>

Extracts members from a bus by path.

== Syntax

- #raw("Block type: busSelector");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 2 output port(s) declared.

== Description

Extracts members from a bus by path.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("busSelector");], 
  [Label], [Bus Selector], 
)
 #strong[Description];

 Reads its bus input and emits one output port per entry of the #raw("SelectedSignals"); parameter. Paths address nested buses with dots (#raw("sub.a");); a selected member that is itself a bus yields a bus-typed output.

 Each output adopts the member’s full descriptor (type, complexity, N-D shape). An unknown path is a compile-time error listing the available members.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/busSelector.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:utility.busCreator>)[busCreator];, #nlink(<nflow_blocks:utility.demux>)[demux];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
