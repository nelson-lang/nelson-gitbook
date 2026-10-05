#import "nelson_help.typ": *

= asind <trigonometric_functions:asind>

Inverse sine in degrees.

== Syntax

- #raw("res = asind(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[asind]; computes the inverse sine in degrees for each element of #strong[x];.


== Example

``````matlab
x = [-50 -20 0 20 50];
y = asind(x)
``````


== See also

#nlink(<trigonometric_functions:sind>)[sind];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
