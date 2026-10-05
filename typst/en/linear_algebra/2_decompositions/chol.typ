#import "../nelson_help.typ": *

= chol <linear_algebra:2_decompositions.chol>

Cholesky factorization.

== Syntax

- #raw("F = chol(A)");

== Input argument

/ A: a matrix: square symmetric positive definite or Hermitian positive definite, dense or sparse.

== Output argument

/ F: Cholesky factor.

== Description

#strong[F \= chol(A)]; factorizes symmetric positive definite matrix#strong[A]; into an upper triangular F that satisfies #strong[A \= F' \* F];.

 Sparse double, single, complex double, and complex single matrices are supported. Sparse factors keep sparse storage and keep the input numeric class where applicable.

 When the two-output form is used, the second output reports the failure index for non-positive-definite sparse matrices.


== Examples

``````matlab
A = [10 0 10; 0 20 0; 10 0 30];
F = chol(A)

``````

Sparse complex single Cholesky factorization.

``````matlab
A = sparse(single([4 1i; -1i 3]));
R = chol(A)
``````


== See also

#nlink(<linear_algebra:1_linear_systems.det>)[det];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [added sparse single and complex single factorization support],
)

// Author: Allan CORNET
