#import "nelson_help.typ": *

= asin <trigonometric_functions:asin>

Computes the inverse sine in radians for each element of x.

== Syntax

- #raw("res = asin(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[asin]; computes the inverse sine in radians for each element of #strong[x];.


== Example

``````matlab
A = eye(3, 3);
res = asin(A)
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
