#import "../nelson_help.typ": *

= inv <linear_algebra:1_linear_systems.inv>

Matrix inverse.

== Syntax

- #raw("res = inv(x)");

== Input argument

/ x: a numeric value: scalar or square matrix (double or single)

== Output argument

/ res: a numeric value: a square matrix

== Description

#strong[inv(x)]; computes the matrix inverse of x.


== Example

``````matlab
X = rand(10, 10);
Y = inv(X);
Y * X

``````


== See also

#nlink(<linear_algebra:4_matrix_functions.expm>)[expm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.4.0], [warning about 'Matrix is singular to working precision'],
)

// Author: Allan CORNET
