#import "nelson_help.typ": *

= polyder <polynomial_functions:polyder>

Polynomial differentiation.

== Syntax

- #raw("k = polyder(p)");
- #raw("k = polyder(a, b)");
- #raw("[q, d] = polyder(a, b)");

== Input argument

/ p: vector: polynomial coefficients
/ a: row vector: polynomial coefficients
/ b: row vector: polynomial coefficients

== Output argument

/ k: row vector: differentiated polynomial coefficients
/ q: row vector: numerator polynomial
/ d: row vector: denominator polynomial

== Description

#strong[k \= polyder(p)]; return the coefficients of the derivative of the polynomial whose coefficients are given by the vector#strong[p];.

 #strong[k \= polyder(a, b)]; returns the derivative of the product of the polynomials#strong[a]; and #strong[b];.

 #strong[\[q, d\] \= polyder(a, b)]; returns the derivative of the quotient of the polynomials#strong[a]; and #strong[b];.


== Example

``````matlab

p = [30 0 -20 0 10 50];
q = polyder(p)
``````


== See also

#nlink(<polynomial_functions:polyval>)[polyval];, #nlink(<polynomial_functions:poly>)[poly];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
