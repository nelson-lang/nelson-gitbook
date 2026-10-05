#import "../nelson_help.typ": *

= magnitudeAngleToComplex <nflow_blocks:math.magnitudeAngleToComplex>

Builds a complex signal from magnitude and angle inputs.

== Syntax

- #raw("Block type: magnitudeAngleToComplex");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Builds a complex signal from magnitude and angle inputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("magnitudeAngleToComplex");], 
  [Label], [Mag-Angle to Complex], 
)
 #strong[Description];

 Combines input port 1 (magnitude) and input port 2 (angle, radians) into the complex signal #raw("m*cos(a) + i*m*sin(a)");.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.complexToMagnitudeAngle>)[complexToMagnitudeAngle];, #nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
