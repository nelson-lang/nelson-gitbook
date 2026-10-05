#import "nelson_help.typ": *

= sinm <trigonometric_functions:sinm>

Computes the matrix sinus of a square matrix.

== Syntax

- #raw("res = sinm(x)");

== Input argument

/ x: a numeric value: scalar or square matrix

== Output argument

/ res: a numeric value: a square matrix

== Description

#strong[sinm(x)]; computes the matrix sinus of #strong[x];.


== Example

``````matlab
A = eye(3, 3);
res = sinm(A)
A = [1, 2; 3, 4];
res = sinm(A)
``````


== See also

#nlink(<trigonometric_functions:sin>)[sin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
