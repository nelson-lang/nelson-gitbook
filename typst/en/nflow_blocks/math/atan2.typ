#import "../nelson_help.typ": *

= atan2 <nflow_blocks:math.atan2>

Four-quadrant arctangent of the two inputs.

== Syntax

- #raw("Block type: atan2");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Four-quadrant arctangent of the two inputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("atan2");], 
  [Label], [Atan2], 
)
 #strong[Description];

 Computes #raw("atan2(y, x)"); element-wise, with #raw("y"); on input port 1 and #raw("x"); on input port 2.

 The result is the angle in radians in the range (-pi, pi\]. Vector signals are processed element by element with scalar expansion.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/atan2.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.abs>)[abs];, #nlink(<nflow_blocks:math.divide>)[divide];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
