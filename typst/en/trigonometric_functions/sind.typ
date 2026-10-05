#import "nelson_help.typ": *

= sind <trigonometric_functions:sind>

Computes the sine in degree for each element of x.

== Syntax

- #raw("res = sind(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[sind]; computes the sine in degree for each element of #strong[x];.


== Example

``````matlab
A = [0 30 45 60 90 360];
sind(A)
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
