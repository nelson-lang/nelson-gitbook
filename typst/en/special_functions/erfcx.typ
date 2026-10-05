#import "nelson_help.typ": *

= erfcx <special_functions:erfcx>

Scaled complementary error function

== Syntax

- #raw("R = erfcx(X)");

== Input argument

/ X: a real single or real double scalar, vector, matrix, or multidimensional array. Sparse and complex inputs are not supported.

== Output argument

/ R: scaled complementary error function values, returned with the same size and floating-point class as X.

== Description

#strong[erfcx]; computes the scaled complementary error function element by element.

 The scaled complementary error function is defined as:

 #latex("erfcx(x) = e^{x^2} erfc(x)"); Use #strong[erfcx]; instead of #strong[exp(x^2) \* erfc(x)]; for large positive X to avoid underflow, overflow, or loss of accuracy.

 For large positive X:

 #latex("erfcx(x) \\approx \\frac{1}{\\sqrt{\\pi}x}");
== Examples

Find the scaled complementary error function of a scalar.

``````matlab
R = erfcx(5)
``````

Find the scaled complementary error function of the elements of a vector.

``````matlab
V = [-Inf -1 0 1 10 Inf];
R = erfcx(V)
``````

Find the scaled complementary error function of the elements of a matrix.

``````matlab
M = [-0.5 15; 3.2 1];
R = erfcx(M)
``````

Avoid overflow in exp(x^2) \* erfc(x).

``````matlab
x = 35;
A = exp(x^2) * erfc(x);
B = erfcx(x);
``````


== See also

#nlink(<special_functions:erfc>)[erfc];, #nlink(<special_functions:erfcinv>)[erfcinv];, #nlink(<special_functions:erf>)[erf];, #nlink(<special_functions:erfinv>)[erfinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
