#import "nelson_help.typ": *

= erf <special_functions:erf>

Error function

== Syntax

- #raw("R = erf(X)");

== Input argument

/ X: a real single or real double scalar, vector, matrix, or multidimensional array. Sparse and complex inputs are not supported.

== Output argument

/ R: error function values, returned with the same size and floating-point class as X.

== Description

#strong[erf]; computes the error function element by element.

 The error function is defined as:

 #latex("erf(x) = \\frac{2}{\\sqrt{\\pi}}\\int_0^x e^{-t^2}\\,dt"); It is related to the complementary error function by:

 #latex("erfc(x) = 1 - erf(x)"); For better numerical accuracy when the result is close to zero, use #strong[erfc]; instead of evaluating #strong[1 - erf(x)];.


== Examples

Find the error function of a scalar.

``````matlab
R = erf(0.76)
``````

Find the error function of the elements of a vector.

``````matlab
V = [-0.5 0 1 0.72];
R = erf(V)
``````

Find the error function of the elements of a matrix.

``````matlab
M = [0.29 -0.11; 3.1 -2.9];
R = erf(M)
``````

Compute the cumulative distribution function of the standard normal distribution.

``````matlab
x = -3:0.1:3;
y = 0.5 * (1 + erf(x / sqrt(2)));
``````


== See also

#nlink(<special_functions:erfc>)[erfc];, #nlink(<special_functions:erfinv>)[erfinv];, #nlink(<special_functions:erfcinv>)[erfcinv];, #nlink(<special_functions:erfcx>)[erfcx];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
