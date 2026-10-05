#import "../nelson_help.typ": *

= null <linear_algebra:1_linear_systems.null>

Null space of a matrix.

== Syntax

- #raw("Z = null(A)");
- #raw("Z = null(A, 'r')");

== Input argument

/ A: a 2D numeric matrix.

== Output argument

/ Z: orthonormal basis for the null space of A; with 'r', a rational basis.

== Description

#strong[null]; returns an orthonormal basis for the null space of A, obtained from the singular value decomposition. null(A, 'r') returns a rational basis for the null space obtained from the reduced row echelon form.


== Example

``````matlab
A = [1 2 3; 4 5 6; 7 8 9];
Z = null(A)
``````


== See also

#nlink(<linear_algebra:1_linear_systems.orth>)[orth];, #nlink(<linear_algebra:1_linear_systems.rank>)[rank];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
