#import "../nelson_help.typ": *

= sign <nflow_blocks:math.sign>

Signum of the input (-1, 0 or +1).

== Syntax

- #raw("Block type: sign");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Signum of the input (-1, 0 or +1).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("sign");], 
  [Label], [Sign], 
)
 #strong[Description];

 Returns #raw("-1"); when the input is negative, #raw("0"); when it is zero and #raw("+1"); when it is positive, element-wise with scalar expansion for vector signals.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/sign.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.abs>)[abs];, #nlink(<nflow_blocks:math.roundingFunction>)[roundingFunction];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
