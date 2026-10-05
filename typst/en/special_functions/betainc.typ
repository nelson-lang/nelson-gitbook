#import "nelson_help.typ": *

= betainc <special_functions:betainc>

Incomplete beta function

== Syntax

- #raw("R = betainc(X, Z, W)");
- #raw("R = betainc(X, Z, W, tail)");

== Input argument

/ X: a real single or real double matrix. It must be in the closed interval \[0, 1\].
/ Z: a real single or real double matrix. It must be nonnegative.
/ W: a real single or real double matrix. It must be nonnegative.
/ tail: a string 'upper' or 'lower' (default).

== Output argument

/ R: result of betainc function.

== Description

#strong[betainc]; computes the incomplete beta function (regularized).

 The incomplete beta function is defined as:

 #latex("I_x(a,b) = \\frac{B(x; a,b)}{B(a,b)} = \\frac{1}{B(a,b)} \\int_0^x t^{a-1} (1-t)^{b-1} \\, dt"); where

 #latex("B(a,b) = \\int_0^1 t^{a-1} (1-t)^{b-1} \\, dt"); is the complete beta function, and:

 #latex("B(a,b) = \\frac{\\Gamma(a)\\Gamma(b)}{\\Gamma(a+b)}"); The function is normalized so that

 #latex("I_1(a,b) = 1");.All arrays must be the same size or any of them can be scalar.


== Example

``````matlab
R = betainc(0.5, 1:10, 3)
``````


== See also

#nlink(<special_functions:gamma>)[gamma];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
