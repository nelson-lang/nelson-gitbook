#import "../nelson_help.typ": *

= mathFunction <nflow_blocks:math.mathFunction>

Mathematical function of the input.

== Syntax

- #raw("Block type: mathFunction");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Mathematical function of the input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("mathFunction");], 
  [Label], [Math Function], 
)
 #strong[Description];

 Applies the mathematical function selected by the #raw("Function"); parameter, element-wise, with scalar expansion for vector signals.

 #strong[Function];

 Single-input values: #raw("exp");, #raw("log");, #raw("10^u"); (10 raised to the input), #raw("log10");, #raw("square"); (u\*u), #raw("sqrt");, #raw("reciprocal"); (1\/u).

 Two-input values (u1 on port 1, u2 on port 2): #raw("pow"); (u1^u2), #raw("hypot"); (sqrt(u1^2+u2^2)), #raw("rem"); (remainder with the sign of u1), #raw("mod"); (modulo with the sign of u2, mod(u1,0)\=u1).

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/mathFunction.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.trigFunction>)[trigFunction];, #nlink(<nflow_blocks:math.sqrt>)[sqrt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
