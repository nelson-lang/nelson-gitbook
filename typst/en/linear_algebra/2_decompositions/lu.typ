#import "../nelson_help.typ": *

= lu <linear_algebra:2_decompositions.lu>

LU matrix factorization.

== Syntax

- #raw("[L, U] = lu(A)");
- #raw("[L, U, P] = lu(A)");

== Input argument

/ A: a matrix: square, finite single or double, real or complex, dense or sparse.

== Output argument

/ L: Lower triangular factor: matrix (same type A)
/ U: Upper triangular factor: matrix (same type A).
/ P: Row permutation: matrix (same type A).

== Description

#strong[\[L, U\] \= lu(A)]; function decomposes a full matrix#strong[A]; into two matrices: an upper triangular matrix#strong[U]; and a permuted lower triangular matrix #strong[L];.

 This factorization satisfies the equation #strong[A \= L \* U];.

 #strong[\[L, U, P\] \= lu(A)]; function, when used with three output arguments, provides a permutation matrix#strong[P]; in addition to the unit lower triangular matrix#strong[L]; and the upper triangular matrix #strong[U];.

 This factorization is expressed as #strong[A \= P'LU];, where #strong[L]; is unit lower triangular, and #strong[U]; is upper triangular.

 Sparse double, single, complex double, and complex single matrices are supported. Sparse factors keep sparse storage and keep the input numeric class where applicable.


== Used function(s)

LAPACK dgetrf, LAPACK sgetrf, LAPACK zgetrf, LAPACK cgetrf

== Examples

``````matlab
A = magic(5)
[L, U] = lu(A)
L * U

``````

``````matlab
A = magic(5)
[L, U, P] = lu(A);
subplot(1, 2, 1)
spy(L)
title(_('L factor'))
subplot(1, 2, 2)
spy(U)
title(_('U factor'))

``````


#align(center)[#image("lu.svg")]
Sparse single LU factorization.

``````matlab
A = sparse(single([4 1; 2 3]));
[L, U, P] = lu(A)
``````


== See also

#nlink(<linear_algebra:5_matrix_properties.cond>)[cond];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.1.0], [initial version],
  [2.0.0], [added sparse single and complex single factorization support],
)

// Author: Allan CORNET
