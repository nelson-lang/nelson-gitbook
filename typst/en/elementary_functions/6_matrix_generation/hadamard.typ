#import "../nelson_help.typ": *

= hadamard <elementary_functions:6_matrix_generation.hadamard>

Hadamard matrix

== Syntax

- #raw("H = hadamard(n)");
- #raw("H = hadamard(n, classname)");

== Input argument

/ n: scalar integer value: order.
/ classname: row character vector or scalar string: class name desired ('double' by default).

== Output argument

/ H: Hadamard Matrix.

== Description

#strong[H \= hadamard(n)]; returns the Hadamard Matrix of order#strong[n];.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Hadamard\_matrix , https:\/\/mathworld.wolfram.com\/HadamardMatrix.html

== Example

``````matlab
H = hadamard(4)
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];, #nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
