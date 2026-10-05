#import "../nelson_help.typ": *

= rref <linear_algebra:1_linear_systems.rref>

Gauss-Jordan elimination.

== Syntax

- #raw("R = rref(A)");
- #raw("R = rref(A, tol)");
- #raw("[R, p] = rref(A)");
- #raw("[R, p] = rref(A, tol)");

== Input argument

/ A: input matrix (double or single)
/ tol: tolerance: scalar or max(rows, cols) \* eps(class(A)) \* norm(A, inf) (default)

== Output argument

/ R: a matrix: reduced row echelon form of A.
/ p: a vector: nonzero pivot columns.

== Description

#strong[R \= rref(A)]; returns the reduced row echelon form of #strong[A];.

 #strong[\[R, p\] \= rref(A)]; returns also the nonzero pivots#strong[p];.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Gaussian\_elimination

== Example

``````matlab
A = [magic(4), eye(4)]
[R, p] = rref(A)
``````


== See also

#nlink(<linear_algebra:1_linear_systems.rank>)[rank];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
