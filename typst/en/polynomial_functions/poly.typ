#import "nelson_help.typ": *

= poly <polynomial_functions:poly>

Polynomial with specified roots or characteristic polynomial.

== Syntax

- #raw("p = poly(r)");
- #raw("p = poly(A)");

== Input argument

/ r: vector: polynomial roots
/ A: matrix: input matrix

== Output argument

/ p: row vector: polynomial coefficients

== Description

If #strong[A]; is a square matrix,#strong[p \= poly(A)]; computes an n+1 element row vector. This result is composed the coefficients of the characteristic polynomial.

 If #strong[r]; is a vector,#strong[p \= poly(r)]; computes a row vector. This result is composed the coefficients of the polynomial roots of which are the elements of #strong[r];.


== Example

``````matlab

A = [1    2    3;
4    5    6;
7    8    1];
p = poly(A)
``````


== See also

#nlink(<data_analysis:conv>)[conv];, #nlink(<polynomial_functions:roots>)[roots];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
