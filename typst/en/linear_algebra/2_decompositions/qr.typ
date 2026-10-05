#import "../nelson_help.typ": *

= qr <linear_algebra:2_decompositions.qr>

QR matrix factorization.

== Syntax

- #raw("R = qr(A)");
- #raw("[Q, R] = qr(A)");
- #raw("[Q, R, P] = qr(A)");
- #raw("[...] = qr(A, 'econ')");
- #raw("[Q, R, P] = qr(A, outputForm)");
- #raw("[...] = qr(A, 0)");
- #raw("[C, R] = qr(S, B)");
- #raw("[C, R, P] = qr(S, B)");

== Input argument

/ A: a full or sparse single or double matrix, real or complex.
/ S: a sparse coefficient matrix.
/ B: a right-hand side matrix with the same numeric class as S.
/ outputForm: 'matrix' or 'vector'.

== Output argument

/ Q: orthogonal or unitary factor.
/ R: upper triangular factor.
/ P: column permutation matrix or vector.
/ C: factor equal to Q' \* B for sparse least-squares forms.

== Description

#strong[qr]; computes a QR factorization. For full matrices, #strong[A \= Q \* R];. With three outputs, a column permutation is returned and #strong[A \* P \= Q \* R];, or #strong[A(:, P) \= Q \* R]; when #strong[outputForm]; is #strong['vector'];.

 The #strong['econ']; option returns economy-size factors for tall matrices. The legacy option #strong[0]; is equivalent to economy-size output with permutation vectors.

 For sparse #strong[S]; and right-hand side #strong[B];, #strong[qr(S, B)]; returns #strong[C \= Q' \* B]; and #strong[R]; for least-squares solves.


== Used function(s)

LAPACK dgeqrf, LAPACK sgeqrf, LAPACK zgeqrf, LAPACK cgeqrf, LAPACK dgeqp3, LAPACK sgeqp3, LAPACK zgeqp3, LAPACK cgeqp3, Eigen::SparseQR

== Examples

``````matlab
A = magic(5);
[Q, R] = qr(A);
norm(A - Q * R)
``````

Economy-size QR factorization.

``````matlab
A = rand(10, 3);
[Q, R, p] = qr(A, 'econ', 'vector');
norm(A(:, p) - Q * R)
``````


== See also

#nlink(<linear_algebra:2_decompositions.lu>)[lu];, #nlink(<linear_algebra:2_decompositions.chol>)[chol];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
