#import "../nelson_help.typ": *

= complexToMagnitudeAngle <nflow_blocks:math.complexToMagnitudeAngle>

Outputs the magnitude and angle of a complex signal.

== Syntax

- #raw("Block type: complexToMagnitudeAngle");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 2 output port(s) declared.

== Description

Outputs the magnitude and angle of a complex signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("complexToMagnitudeAngle");], 
  [Label], [Complex to Mag-Angle], 
)
 #strong[Description];

 Output port 1 carries the magnitude #raw("abs(z)"); and output port 2 the four-quadrant angle #raw("atan2(imag(z), real(z))"); of the complex input.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.magnitudeAngleToComplex>)[magnitudeAngleToComplex];, #nlink(<nflow_blocks:math.atan2>)[atan2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
