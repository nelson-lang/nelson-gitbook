#import "../nelson_help.typ": *

= realImagToComplex <nflow_blocks:math.realImagToComplex>

Builds a complex signal from real and imaginary inputs.

== Syntax

- #raw("Block type: realImagToComplex");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Builds a complex signal from real and imaginary inputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("realImagToComplex");], 
  [Label], [Re-Im to Complex], 
)
 #strong[Description];

 Combines input port 1 (real part) and input port 2 (imaginary part) into one complex output signal.

 Complexity is a per-port attribute orthogonal to the numeric type: the complex signal flows through the complex-aware math blocks (gain, sum, mult, divide, negate, conjugate) and the routing blocks, and back to real signals through #raw("complexToRealImag");, #raw("complexToMagnitudeAngle"); or #raw("abs"); (magnitude).

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.complexToRealImag>)[complexToRealImag];, #nlink(<nflow_blocks:math.magnitudeAngleToComplex>)[magnitudeAngleToComplex];, #nlink(<nflow_blocks:math.conjugate>)[conjugate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
