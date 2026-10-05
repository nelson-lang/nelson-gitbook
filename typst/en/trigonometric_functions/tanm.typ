#import "nelson_help.typ": *

= tanm <trigonometric_functions:tanm>

Computes the matrix tangent of a square matrix.

== Syntax

- #raw("res = tanm(x)");

== Input argument

/ x: a numeric value: scalar or square matrix

== Output argument

/ res: a numeric value: a square matrix

== Description

#strong[tanm(x)]; computes the matrix tangent of #strong[x];.


== Example

``````matlab
A = eye(3, 3);
res = tanm(A)
A = [1, 2; 3, 4];
res = tanm(A)
``````


== See also

#nlink(<trigonometric_functions:tan>)[tan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
