#import "../nelson_help.typ": *

= trigFunction <nflow_blocks:math.trigFunction>

Trigonometric function of the input.

== Syntax

- #raw("Block type: trigFunction");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Trigonometric function of the input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("trigFunction");], 
  [Label], [Trigonometric Function], 
)
 #strong[Description];

 Applies the trigonometric function selected by the #raw("Function"); parameter, element-wise, with scalar expansion for vector signals. Angles are expressed in radians.

 #strong[Function];

 Single-input values: #raw("sin");, #raw("cos");, #raw("tan");, #raw("asin");, #raw("acos");, #raw("atan");, #raw("sinh");, #raw("cosh");, #raw("tanh");, #raw("asinh");, #raw("acosh");, #raw("atanh");.

 #raw("atan2"); uses two inputs: #raw("atan2(u1, u2)"); with u1 on port 1 and u2 on port 2. #raw("sincos"); produces two outputs: sin(u) on port 1 and cos(u) on port 2.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/trigFunction.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.atan2>)[atan2];, #nlink(<nflow_blocks:math.sqrt>)[sqrt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
