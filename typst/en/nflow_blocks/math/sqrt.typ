#import "../nelson_help.typ": *

= sqrt <nflow_blocks:math.sqrt>

Square-root family of the input.

== Syntax

- #raw("Block type: sqrt");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Square-root family of the input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("sqrt");], 
  [Label], [Sqrt], 
)
 #strong[Description];

 Applies the square-root variant selected by the #raw("Function"); parameter, element-wise, with scalar expansion for vector signals.

 #strong[Function];

 #raw("sqrt");: square root #raw("sqrt(u)"); (a negative input yields NaN on the real path).

 #raw("signedSqrt");: signed square root #raw("sign(u)*sqrt(|u|)"); (always real).

 #raw("rSqrt");: reciprocal square root #raw("1/sqrt(u)");.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/sqrt.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.abs>)[abs];, #nlink(<nflow_blocks:math.sign>)[sign];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
