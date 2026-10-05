#import "../nelson_help.typ": *

= reshape <nflow_blocks:utility.reshape>


#block-icon(image("reshape.svg"))

Changes signal dimensions without changing element values.

== Syntax

- #raw("Block type: reshape");

== Description

The #strong[Reshape]; block preserves element order and assigns the dimensions specified by #strong[OutputDimensions];.

 The input and output must contain the same number of elements. A mismatch is reported as a simulation diagnostic.

  #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/reshape.cpp", title: "Runtime")

