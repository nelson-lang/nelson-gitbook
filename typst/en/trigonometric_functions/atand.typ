#import "nelson_help.typ": *

= atand <trigonometric_functions:atand>

Inverse tangent in degrees.

== Syntax

- #raw("res = atand(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[atand]; computes the inverse tangent in degrees for each element of #strong[x];.
== Example

``````matlab
x = [-50 -20 0 20 50];
y = atand(x)
``````


== See also

#nlink(<trigonometric_functions:tand>)[tand];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
