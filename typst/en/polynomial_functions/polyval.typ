#import "nelson_help.typ": *

= polyval <polynomial_functions:polyval>

Polynomial evaluation.

== Syntax

- #raw("y = polyval(p, x)");
- #raw("y = polyval(p, x, S)");
- #raw("y = polyval(p, x, S, mu)");
- #raw("[y, delta] = polyval(p, x, S)");
- #raw("[y, delta] = polyval(p, x, S, mu)");

== Input argument

/ p: vector: polynomial coefficients
/ x: query points
/ S: structure: error estimation structure, the second output of polyfit (fields R, df and normr). Required to compute delta.
/ mu: two element vector: centering and scaling, the third output of polyfit. The polynomial is evaluated at (x - mu(1)) \/ mu(2).

== Output argument

/ y: vector: Function values
/ delta: vector: standard error estimate for each value, computed from S.

== Description

#strong[polyval]; evaluates polynomial at several points.

 When #strong[mu]; is provided, the polynomial is evaluated at the centered and scaled points (x - mu(1)) \/ mu(2), matching a fit produced by #strong[polyfit]; with three outputs.

 When the second output #strong[delta]; is requested, #strong[S]; must be supplied and is used to return an estimate of the standard error of the prediction.


== Example

``````matlab

p = [3 2 1];
x = [5 7 9];
R = polyval(p, x)
``````


== See also

#nlink(<polynomial_functions:polyvalm>)[polyvalm];, #nlink(<polynomial_functions:polyfit>)[polyfit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
