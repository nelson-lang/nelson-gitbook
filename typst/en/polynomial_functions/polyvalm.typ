#import "nelson_help.typ": *

= polyvalm <polynomial_functions:polyvalm>

Matrix polynomial evaluation.

== Syntax

- #raw("Y = polyvalm(p, X)");

== Input argument

/ p: vector: polynomial coefficients
/ X: square matrix: input matrix

== Output argument

/ Y: row vector: Output polynomial coefficients

== Description

#strong[polyvalm]; evaluates matrix polynomial.


== Example

``````matlab

R = polyvalm ([1, 2, 3, 4], [3, -4, 1; -2, 0, 2; -1, 4, -3])
``````


== See also

#nlink(<polynomial_functions:polyval>)[polyval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
