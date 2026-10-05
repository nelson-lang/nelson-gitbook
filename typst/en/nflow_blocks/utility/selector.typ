#import "../nelson_help.typ": *

= selector <nflow_blocks:utility.selector>


#block-icon(image("selector.svg"))

Selects elements from an input signal by one-based indices.

== Syntax

- #raw("Block type: selector");

== Description

The #strong[Selector]; block copies the elements listed by #strong[Indices]; to its output. Indices are one-based and the output width equals the number of selected indices.

 Indices outside the available input range are clamped to the nearest valid element.

  #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/selector.cpp", title: "Runtime")

