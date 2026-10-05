#import "../nelson_help.typ": *

= toeplitz <elementary_functions:6_matrix_generation.toeplitz>

Toeplitz matrix

== Syntax

- #raw("T = toeplitz(c, r)");
- #raw("T = toeplitz(r)");

== Input argument

/ c: a scalar or vector: column of Toeplitz matrix.
/ r: a scalar or vector: row of Toeplitz matrix.

== Output argument

/ T: Toeplitz matrix.

== Description

#strong[T \= toeplitz(c, r)]; returns the Toeplitz matrix whose first row is#strong[r]; and first column is #strong[c];.

 #strong[T \= toeplitz(c)]; returns the symmetric Toeplitz matrix.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Toeplitz\_matrix

== Example

``````matlab
T = toeplitz(1:5, 1:2:7)
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
