#import "../nelson_help.typ": *

= lookup1D <nflow_blocks:lookup.lookup1D>

1-D interpolated lookup table.

== Syntax

- #raw("Block type: lookup1D");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

1-D interpolated lookup table.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Lookup Tables], 
  [Type], [#raw("lookup1D");], 
  [Label], [1-D Lookup Table], 
)
 #strong[Description];

 Interpolates a static breakpoints\/table pair at the input value. InterpMethod selects Flat, Nearest, Linear point-slope or Linear Lagrange; ExtrapMethod selects Clip or Linear. Element-wise with scalar expansion.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/lookup1D.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
