#import "../nelson_help.typ": *

= conjugate <nflow_blocks:math.conjugate>

Complex conjugate of the input signal.

== Syntax

- #raw("Block type: conjugate");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Complex conjugate of the input signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("conjugate");], 
  [Label], [Conjugate], 
)
 #strong[Description];

 Outputs #raw("conj(z)");; for a real input the block is the identity.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex];, #nlink(<nflow_blocks:math.complexToRealImag>)[complexToRealImag];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
