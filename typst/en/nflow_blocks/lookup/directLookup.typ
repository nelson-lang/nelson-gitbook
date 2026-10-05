#import "../nelson_help.typ": *

= directLookup <nflow_blocks:lookup.directLookup>

Direct (n-D) lookup table without interpolation.

== Syntax

- #raw("Block type: directLookup");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Direct (n-D) lookup table without interpolation.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Lookup Tables], 
  [Type], [#raw("directLookup");], 
  [Label], [Direct Lookup Table (n-D)], 
)
 #strong[Description];

 N integer index inputs select one element of a static column-major Table (Element mode). Per-dimension sizes come from TableDimensions; each index is rounded and clamped (zero-based).

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/directLookup.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
