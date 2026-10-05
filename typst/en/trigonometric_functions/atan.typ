#import "nelson_help.typ": *

= atan <trigonometric_functions:atan>

Computes the inverse tangent in radians for each element of x.

== Syntax

- #raw("res = atan(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[atan]; computes the inverse tangent in radians for each element of #strong[x];.
== Example

``````matlab
A = eye(3, 3);
res = atan(A)
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
