#import "nelson_help.typ": *

= acscd <trigonometric_functions:acscd>

Inverse cosecant in degrees.

== Syntax

- #raw("res = acsc(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acscd]; computes the inverse cosecant of argument in degrees for each element of #strong[x];.
== Example

``````matlab
x = [0 1 20 10 Inf];
y = acscd(x)
``````


== See also

#nlink(<trigonometric_functions:cscd>)[cscd];, #nlink(<trigonometric_functions:csc>)[csc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
