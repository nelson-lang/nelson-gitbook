#import "../nelson_help.typ": *

= concatenate <nflow_blocks:utility.concatenate>


#block-icon(image("concatenate.svg"))

Concatenates input signals along a selected dimension.

== Syntax

- #raw("Block type: concatenate");

== Description

The #strong[Concatenate]; block joins all input signals along #strong[ConcatenateDimension];. Dimension 1 joins rows, dimension 2 joins columns, and higher values stack along a higher dimension.

 All dimensions other than the concatenation dimension must be compatible.

  #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/concatenate.cpp", title: "Runtime")

