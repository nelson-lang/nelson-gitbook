#import "../nelson_help.typ": *

= matmul <nflow_blocks:math.matmul>


#block-icon(image("matmul.svg"))

Multiplies two matrix signals or applies element-wise multiplication.

== Syntax

- #raw("Block type: matmul");

== Description

The #strong[MatMul]; block has two inputs and one output. With #strong[MultiplicationRule]; set to #strong[matrix];, it computes the matrix product A \* B. With #strong[elementwise];, it multiplies corresponding elements.

 Matrix dimensions must be compatible with the selected rule. Scalars are expanded where the signal-layout rules allow it.

  #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/matrix/matmul.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.mult>)[mult];.
