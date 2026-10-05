#import "../nelson_help.typ": *

= roundingFunction <nflow_blocks:math.roundingFunction>

Rounds the input to an integer value.

== Syntax

- #raw("Block type: roundingFunction");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Rounds the input to an integer value.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("roundingFunction");], 
  [Label], [Rounding Function], 
)
 #strong[Description];

 Applies the rounding mode selected by the #raw("Operator"); parameter, element-wise, with scalar expansion for vector signals.

 #strong[Operator];

 #raw("floor");: round toward minus infinity.

 #raw("ceil");: round toward plus infinity.

 #raw("round");: round to the nearest integer, ties away from zero.

 #raw("fix");: truncate toward zero.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/roundingFunction.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.sign>)[sign];, #nlink(<nflow_blocks:math.sqrt>)[sqrt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
