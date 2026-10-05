#import "../nelson_help.typ": *

= vander <elementary_functions:6_matrix_generation.vander>

Vandermonde matrix

== Syntax

- #raw("A = vander(v)");

== Input argument

/ v: a numeric vector.

== Output argument

/ A: Vandermonde Matrix.

== Description

#strong[A \= vander(v)]; returns the Vandermonde Matrix.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Vandermonde\_matrix

== Example

``````matlab
A = vander(1:.5:3)
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
