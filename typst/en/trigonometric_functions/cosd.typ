#import "nelson_help.typ": *

= cosd <trigonometric_functions:cosd>

Computes the cosine in degree for each element of x.

== Syntax

- #raw("res = cosd(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[cosd]; computes the cosine in degree for each element of #strong[x];.


== Example

``````matlab
A = [0 30 45 60 90 360];;
res = cosd(A)
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
