#import "../nelson_help.typ": *

= hankel <elementary_functions:6_matrix_generation.hankel>

Hankel matrix

== Syntax

- #raw("H = hankel(c)");
- #raw("H = hankel(c, r)");

== Input argument

/ c: First column of Hankel matrix: vector or scalar.
/ r: Last row of Hankel matrix: vector or scalar.

== Output argument

/ H: Hankel Matrix.

== Description

#strong[H \= hankel(c)]; returns a square Hankel Matrix with#strong[c]; the first column of the matrix and the elements are zero below the main anti-diagonal.

 #strong[H \= hankel(c, r)]; returns a Hankel matrix with#strong[c]; as its first column and #strong[r]; as its last row.

 If last element of #strong[c]; differs from the first element of #strong[r];, then Hankel issues a warning and uses the last element of #strong[c]; for the anti-diagonal.


== Example

``````matlab
c = [1 2 3 4 5];
hankel(c)
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
