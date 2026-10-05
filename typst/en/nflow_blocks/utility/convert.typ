#import "../nelson_help.typ": *

= convert <nflow_blocks:utility.convert>


#block-icon(image("convert.svg"))

Converts a signal to a selected data type.

== Syntax

- #raw("Block type: convert");

== Description

The #strong[Convert]; block casts every input element to #strong[OutDataType]; while preserving signal dimensions.

 #strong[Rounding]; controls conversion of non-integer values. #strong[SaturateOnOverflow]; selects saturation instead of wraparound when the target range is exceeded.

  #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/convert.cpp", title: "Runtime")

