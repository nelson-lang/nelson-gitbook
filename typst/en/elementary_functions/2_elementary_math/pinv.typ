#import "../nelson_help.typ": *

= pinv <elementary_functions:2_elementary_math.pinv>

Moore-Penrose pseudoinverse

== Syntax

- #raw("y = pinv(A)");
- #raw("y = pinv(A, tol)");

== Input argument

/ A: matrix: input matrix
/ tol: scalar: singular value tolerance

== Output argument

/ y: Moore-Penrose Pseudoinverse of matrix A.

== Description

#strong[pinv]; returns Moore-Penrose Pseudoinverse of matrix A.


== Example

``````matlab
A = [1, 2, 3; 4, 5, 6];
R = pinv(A)
R = pinv(A, 2)
``````


== See also

#nlink(<linear_algebra:1_linear_systems.inv>)[inv];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
