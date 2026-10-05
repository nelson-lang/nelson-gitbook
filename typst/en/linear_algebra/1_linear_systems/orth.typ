#import "../nelson_help.typ": *

= orth <linear_algebra:1_linear_systems.orth>

Range space of a matrix.

== Syntax

- #raw("O = orth(A)");
- #raw("O = orth(A, tol)");

== Input argument

/ A: Input matrix
/ tol: a numeric value: scalar, singular value tolerance

== Output argument

/ O: real or complex number (double or single).

== Description

#strong[O \= orth(A)]; returns an orthonormal basis for the range of #strong[A];.


== Example

``````matlab
M = [10 -20 40; -50 20 0; 10 0 30]
O = orth(M)

``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];, #nlink(<linear_algebra:1_linear_systems.rank>)[rank];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
