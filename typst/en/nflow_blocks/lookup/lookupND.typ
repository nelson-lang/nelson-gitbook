#import "../nelson_help.typ": *

= lookupND <nflow_blocks:lookup.lookupND>

n-D interpolated lookup table.

== Syntax

- #raw("Block type: lookupND");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

n-D interpolated lookup table.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Lookup Tables], 
  [Type], [#raw("lookupND");], 
  [Label], [n-D Lookup Table], 
)
 #strong[Description];

 N inputs (one coordinate per dimension, NumberOfTableDimensions) index a static column-major Table; multilinear interpolation as the weighted blend of the 2^N corners.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/lookupND.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
