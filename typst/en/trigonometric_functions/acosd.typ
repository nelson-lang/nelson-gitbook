#import "nelson_help.typ": *

= acosd <trigonometric_functions:acosd>

Inverse cosine in degrees.

== Syntax

- #raw("res = acosd(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[atand]; computes the inverse cosine in degrees for each element of #strong[x];.
== Example

``````matlab
x = [1 -20 0 2 5];
y = acosd(x)
``````


== See also

#nlink(<trigonometric_functions:cosd>)[cosd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
