#import "../nelson_help.typ": *

= lookup2D <nflow_blocks:lookup.lookup2D>

2-D interpolated lookup table.

== Syntax

- #raw("Block type: lookup2D");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

2-D interpolated lookup table.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Lookup Tables], 
  [Type], [#raw("lookup2D");], 
  [Label], [2-D Lookup Table], 
)
 #strong[Description];

 Two inputs (row and column coordinates) index a static column-major matrix Table; bilinear \/ Flat \/ Nearest interpolation with Clip or Linear extrapolation.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/lookup2D.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
