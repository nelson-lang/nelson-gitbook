#import "../nelson_help.typ": *

= dotProduct <nflow_blocks:math.dotProduct>

Dot product of two vector inputs.

== Syntax

- #raw("Block type: dotProduct");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Dot product of two vector inputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("dotProduct");], 
  [Label], [Dot Product], 
)
 #strong[Description];

 Computes the sum over i of a\[i\]\*b\[i\] for the two vector inputs and outputs the scalar result.

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
