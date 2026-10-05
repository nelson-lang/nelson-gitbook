#import "../nelson_help.typ": *

= sumElements <nflow_blocks:math.sumElements>

Sum of the elements of a vector input.

== Syntax

- #raw("Block type: sumElements");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Sum of the elements of a vector input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("sumElements");], 
  [Label], [Sum of Elements], 
)
 #strong[Description];

 Sums all elements of the vector input and outputs the scalar result. A scalar input passes through unchanged.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/matrix/vectorMath.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.sum>)[sum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
