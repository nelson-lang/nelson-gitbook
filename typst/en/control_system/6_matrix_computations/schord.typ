#import "../nelson_help.typ": *

= schord <control_system:6_matrix_computations.schord>

Order a Schur decomposition.

== Syntax

- #raw("[Qo, To] = schord(Qi, Ti, index)");

== Input argument

/ Qi: orthogonal or unitary Schur vector matrix.
/ Ti: upper triangular Schur matrix.
/ index: ordering keys for the diagonal entries.

== Output argument

/ Qo: ordered Schur vector matrix.
/ To: ordered Schur matrix.

== Description

#strong[schord]; applies adjacent unitary rotations to reorder a Schur decomposition by increasing values in #strong[index];.


== Example

``````matlab

A = [1 2; 3 4];
[Q, T] = schur(A);
[Qo, To] = schord(Q, T, [2 1])

``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur];, #nlink(<control_system:6_matrix_computations.bdschur>)[bdschur];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
