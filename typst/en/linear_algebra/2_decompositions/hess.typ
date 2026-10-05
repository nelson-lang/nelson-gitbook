#import "../nelson_help.typ": *

= hess <linear_algebra:2_decompositions.hess>

Hessenberg form of a square matrix.

== Syntax

- #raw("H = hess(A)");
- #raw("[P, H] = hess(A)");

== Input argument

/ A: square numeric matrix.

== Output argument

/ H: upper Hessenberg matrix similar to A.
/ P: unitary transformation matrix satisfying A \= P \* H \* P'.

== Description

hess reduces a square numeric matrix to upper Hessenberg form by unitary similarity transformations.

 With two outputs, hess also returns the accumulated transformation matrix P such that A \= P \* H \* P'.


== Used function(s)

LAPACK

== Example

Compute a Hessenberg form and verify the similarity residual.

``````matlab
A = [1 2 3; 4 5 6; 7 8 10];
[P, H] = hess(A);
residual = norm(A - P * H * transpose(P), 'fro')
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur];, #nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
