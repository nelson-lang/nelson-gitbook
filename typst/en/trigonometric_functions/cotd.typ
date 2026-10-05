#import "nelson_help.typ": *

= cotd <trigonometric_functions:cotd>

Cotangent of argument in degrees

== Syntax

- #raw("res = cotd(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[cotd]; computes the cotangent of argument in degrees for each element of #strong[x];.
== Example

``````matlab
R = cotd(35 + 5i)
``````


== See also

#nlink(<trigonometric_functions:cot>)[cot];, #nlink(<trigonometric_functions:acot>)[acot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
