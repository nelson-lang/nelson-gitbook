#import "nelson_help.typ": *

= cospi <trigonometric_functions:cospi>

Computes cos(X \* pi) accurately.

== Syntax

- #raw("res = cospi(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[res \= cospi(x)]; computes #strong[cos(x \* pi)]; accurately.

 For integers, #strong[cospi(x)]; is +1 or -1.

 For odd integers, #strong[cospi(x \/ 2)]; is exactly zero.


== Example

``````matlab
x = [0, 1/2, 1, 3/2, 2];
r = cos(x * pi)
res = cospi(x)
``````


== See also

#nlink(<trigonometric_functions:cos>)[cos];, #nlink(<trigonometric_functions:sinpi>)[sinpi];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
