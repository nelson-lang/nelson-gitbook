#import "nelson_help.typ": *

= erfc <special_functions:erfc>

Complementary error function

== Syntax

- #raw("R = erfc(X)");

== Input argument

/ X: a real single or real double scalar, vector, matrix, or multidimensional array. Sparse and complex inputs are not supported.

== Output argument

/ R: complementary error function values, returned with the same size and floating-point class as X.

== Description

#strong[erfc]; computes the complementary error function element by element.

 The complementary error function is defined as:

 #latex("erfc(x) = \\frac{2}{\\sqrt{\\pi}}\\int_x^{\\infty} e^{-t^2}\\,dt"); It is related to the error function by:

 #latex("erfc(x) = 1 - erf(x)"); Use #strong[erfc]; instead of #strong[1 - erf(x)]; when #strong[erf(x)]; is close to 1, because direct subtraction can lose significant digits.

 Use #strong[erfcx]; instead of #strong[exp(x^2) \* erfc(x)]; for large positive values of X.


== Examples

Find the complementary error function of a scalar.

``````matlab
R = erfc(0.35)
``````

Find the complementary error function of the elements of a vector.

``````matlab
V = [-0.5 0 1 0.72];
R = erfc(V)
``````

Find the complementary error function of the elements of a matrix.

``````matlab
M = [0.29 -0.11; 3.1 -2.9];
R = erfc(M)
``````

Compare direct subtraction with erfc for a large positive input.

``````matlab
A = 1 - erf(10);
B = erfc(10);
``````


== See also

#nlink(<special_functions:erf>)[erf];, #nlink(<special_functions:erfcinv>)[erfcinv];, #nlink(<special_functions:erfcx>)[erfcx];, #nlink(<special_functions:erfinv>)[erfinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
