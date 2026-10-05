#import "nelson_help.typ": *

= cosm <trigonometric_functions:cosm>

Computes the matrix cosine of a square matrix.

== Syntax

- #raw("res = cosm(x)");

== Input argument

/ x: a numeric value: scalar or square matrix

== Output argument

/ res: a numeric value: a square matrix

== Description

#strong[cosm(x)]; computes the matrix cosine of #strong[x];.


== Example

``````matlab
A = eye(3, 3);
res = cosm(A)
A = [1, 2; 3, 4];
res = cosm(A)
``````


== See also

#nlink(<trigonometric_functions:cos>)[cos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
