#import "../nelson_help.typ": *

= balance <linear_algebra:3_eigen_singular_values.balance>

Diagonal scaling to improve eigenvalue accuracy.

== Syntax

- #raw("B = balance(A)");
- #raw("B = balance(A,'noperm')");
- #raw("[T, B] = balance(A)");
- #raw("[S, P, B] = balance(A)");

== Input argument

/ A: a matrix: square, finite single or double.

== Output argument

/ B: balanced matrix.
/ T: similarity transformation: Rearrange the elements of a diagonal matrix containing integer powers of two in order to minimize the impact of roundoff errors.
/ S: scaling vector
/ P: permutation vector

== Description

#strong[B \= balance(A)]; returns the balanced matrix #strong[B];.

 #strong[B \= balance(A, 'noperm')]; scales#strong[A]; without permuting its rows and columns.


== Used function(s)

LAPACK dgebal, LAPACK sgebal, LAPACK zgebal, LAPACK cgebal

== Example

``````matlab
A = [10  1000  100000; .1  10  1000; .001  .1  10]
F = balance(A)

``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
