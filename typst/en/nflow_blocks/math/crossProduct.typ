#import "../nelson_help.typ": *

= crossProduct <nflow_blocks:math.crossProduct>

Cross product of two 3-element vectors.

== Syntax

- #raw("Block type: crossProduct");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Cross product of two 3-element vectors.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("crossProduct");], 
  [Label], [Cross Product], 
)
 #strong[Description];

 Computes the cross product a x b of two 3-element vector inputs and outputs the resulting 3-element vector.

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
