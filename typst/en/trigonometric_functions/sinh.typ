#import "nelson_help.typ": *

= sinh <trigonometric_functions:sinh>

Computes the hyperbolic sine in radians for each element of x.

== Syntax

- #raw("res = sinh(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[sinh]; computes the hyperbolic sine in radians for each element of #strong[x];.
== Example

``````matlab
A = eye(3, 3);
res = sinh(A)
``````


== See also

#nlink(<trigonometric_functions:asin>)[asin];, #nlink(<trigonometric_functions:sin>)[sin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
