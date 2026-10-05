#import "nelson_help.typ": *

= acos <trigonometric_functions:acos>

Computes the inverse cosine in radians for each element of x.

== Syntax

- #raw("res = acos(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acos]; computes the inverse cosine in radians for each element of #strong[x];.
== Example

``````matlab
A = eye(3, 3);
res = acos(A)
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
