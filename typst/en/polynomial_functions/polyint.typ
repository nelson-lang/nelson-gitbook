#import "nelson_help.typ": *

= polyint <polynomial_functions:polyint>

Polynomial integration.

== Syntax

- #raw("q = polyint(p, k)");
- #raw("q = polyint(p)");

== Input argument

/ p: vector: polynomial coefficients
/ k: numeric scalr: constant of integration

== Output argument

/ q: row vector: integrated polynomial coefficients

== Description

#strong[polyint]; returns the integral of the polynomial represented by the coefficients in#strong[p]; using a constant of integration #strong[k]; (0 by default).


== Example

``````matlab

p = [10, 0, -10, 0, 0, 10];
v = [10, 0, 10];
k = 3;
q = polyint(conv(p,v),k)
``````


== See also

#nlink(<polynomial_functions:polyval>)[polyval];, #nlink(<polynomial_functions:polyvalm>)[polyvalm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
