#import "../nelson_help.typ": *

= ord2 <control_system:5_control_design_tuning.ord2>

Generate continuous second-order systems.

== Syntax

- #raw("[A, B, C, D] = ord2(wn, z)");
- #raw("[num, den] = ord2(wn, z)");

== Input argument

/ wn: natural frequency
/ z: damping factor

== Output argument

/ A: State matrix: Nx-by-Nx matrix.
/ B: Input-to-state matrix: Nx-by-Nu matrix.
/ C: State-to-output matrix: Ny-by-Nx matrix.
/ D: Feedthrough matrix: Ny-by-Nu matrix.
/ num: polynomial coefficients: a row vector or as a cell array of row vectors.
/ den: polynomial coefficients: a row vector or as a cell array of row vectors.

== Description

#strong[ord2]; offers a convenient way to obtain either the state-space representation or the transfer function of a second-order system based on its natural frequency and damping factor.


== Example

``````matlab
wn = 5;
z = 0.7;
[A, B, C, D] = ord2(wn, z);
sys1 = ss(A, B, C, D)

[num, den] = ord2(wn, z);
sys2 = tf(num, den)

``````


== See also

#nlink(<control_system:1_dynamic_system_models.ss>)[ss];, #nlink(<control_system:1_dynamic_system_models.tf>)[tf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
