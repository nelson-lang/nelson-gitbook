#import "../nelson_help.typ": *

= rank <linear_algebra:1_linear_systems.rank>

Rank of matrix.

== Syntax

- #raw("r = rank(A)");
- #raw("r = rank(A, tol)");

== Input argument

/ A: matrix: double or single
/ tol: tolerance

== Output argument

/ r: a numeric value: a scalar.

== Description

#strong[rank(A)]; returns the number of linearly independent columns in a matrix (rank of the matrix).


== Example

``````matlab
X = rand(10, 10);
r = rank(X)
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
