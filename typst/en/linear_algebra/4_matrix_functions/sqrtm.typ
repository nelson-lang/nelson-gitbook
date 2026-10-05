#import "../nelson_help.typ": *

= sqrtm <linear_algebra:4_matrix_functions.sqrtm>

Computes the matrix square root of a square matrix.

== Syntax

- #raw("res = sqrtm(x)");

== Input argument

/ x: a numeric value: scalar or square matrix (double or single)

== Output argument

/ res: a numeric value: a square matrix

== Description

#strong[expm(x)]; computes the matrix square root of x.


== Example

``````matlab
A = eye(3, 3);
res = sqrtm(A)
res = sqrtm(A+i)
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
