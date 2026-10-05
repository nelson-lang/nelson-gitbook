#import "../nelson_help.typ": *

= complexToRealImag <nflow_blocks:math.complexToRealImag>

Splits a complex signal into real and imaginary outputs.

== Syntax

- #raw("Block type: complexToRealImag");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 2 output port(s) declared.

== Description

Splits a complex signal into real and imaginary outputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("complexToRealImag");], 
  [Label], [Complex to Re-Im], 
)
 #strong[Description];

 Output port 1 carries the real part and output port 2 the imaginary part of the complex input signal.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex];, #nlink(<nflow_blocks:math.complexToMagnitudeAngle>)[complexToMagnitudeAngle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
