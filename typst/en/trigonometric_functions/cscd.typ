#import "nelson_help.typ": *

= cscd <trigonometric_functions:cscd>

Cosecant of argument in degrees.

== Syntax

- #raw("res = cscd(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[cscd]; computes the cosecant of argument in degrees for each element of #strong[x];.
== Example

``````matlab
R = cscd([35+i 15+2i 10+3i])
``````


== See also

#nlink(<trigonometric_functions:cosh>)[csc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
