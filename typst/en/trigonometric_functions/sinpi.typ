#import "nelson_help.typ": *

= sinpi <trigonometric_functions:sinpi>

Computes sin(X \* pi) accurately.

== Syntax

- #raw("res = sinpi(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[res \= sinpi(x)]; computes #strong[sin(x \* pi)]; accurately.

 For odd integers, #strong[sinpi(x \/ 2)]; is +1 or -1.

 For integers, #strong[sinpi(x)]; is exactly zero.


== Example

``````matlab
x = [0, 1/2, 1, 3/2, 2];
r = sin(x * pi)
res = sinpi(x)
``````


== See also

#nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:cospi>)[cospi];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
