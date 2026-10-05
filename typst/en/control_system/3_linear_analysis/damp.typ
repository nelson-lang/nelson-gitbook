#import "../nelson_help.typ": *

= damp <control_system:3_linear_analysis.damp>

Natural frequency and damping ratio.

== Syntax

- #raw("[wn, zeta] = damp(sys)");
- #raw("[wn, zeta, p, T] = damp(sys)");

== Input argument

/ sys: LTI model.

== Output argument

/ wn: Natural frequency of each pole: vector.
/ zeta: Damping ratio of each pole: vector.
/ p: Poles of the dynamic system model: vector.
/ T: Time Constant (seconds): vector.

== Description

The function #strong[damp(sys)]; provides the natural frequencies (#strong[wn];) and damping ratios (#strong[zeta];) associated with the poles of the system represented by #strong[sys];.


== Example

``````matlab
sys = tf([2, 5, 1], [1, 0, 2, -6]);
[wn, zeta, p, T] = damp(sys)

``````


== See also

#nlink(<control_system:6_matrix_computations.esort>)[esort];, #nlink(<control_system:1_dynamic_system_models.pole>)[pole];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
