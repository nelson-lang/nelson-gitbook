#import "../nelson_help.typ": *

= subspace <linear_algebra:1_linear_systems.subspace>

Angle between two subspaces.

== Syntax

- #raw("T = subspace(A, B)");

== Input argument

/ A: vector or matrix (real or single)
/ B: vector or matrix (real or single)

== Output argument

/ T: scalar: angle.

== Description

#strong[T \= subspace(A, B)]; finds the angle between two subspaces specified by the columns of #strong[A]; and #strong[B];.


== Example

``````matlab
M = [1   1   1   1   1   1   1   1;
1  -1   1  -1   1  -1   1  -1;
1   1  -1  -1   1   1  -1  -1;
1  -1  -1   1   1  -1  -1   1;
1   1   1   1  -1  -1  -1  -1;
1  -1   1  -1  -1   1  -1   1;
1   1  -1  -1  -1  -1   1   1;
1  -1  -1   1  -1   1   1  -1];
A = M(:, 2:4);
B = M(:, 5:8);
R = subspace(A, B)

``````


== See also

#nlink(<linear_algebra:1_linear_systems.orth>)[orth];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
