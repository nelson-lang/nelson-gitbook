#import "nelson_help.typ": *

= tand <trigonometric_functions:tand>

Computes the tangent in degree for each element of x.

== Syntax

- #raw("res = tand(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[tand]; computes the tangent in degree for each element of #strong[x];.


== Example

``````matlab
A = [0 30 45 60 90 360];
res = tand(A)
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
