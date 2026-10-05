#import "nelson_help.typ": *

= erfcinv <special_functions:erfcinv>

Inverse complementary error function

== Syntax

- #raw("R = erfcinv(X)");

== Input argument

/ X: a real single or real double scalar, vector, matrix, or multidimensional array. Sparse and complex inputs are not supported.

== Output argument

/ R: inverse complementary error function values, returned with the same size and floating-point class as X.

== Description

#strong[erfcinv]; computes the inverse complementary error function element by element.

 The inverse complementary error function is defined by:

 #latex("erfc(erfcinv(x)) = x"); Values outside the interval \[0, 2\] return NaN. The values 0 and 2 return Inf and -Inf, respectively.

 Use #strong[erfcinv]; instead of #strong[erfinv(1 - x)]; when x is close to zero to avoid round-off errors.


== Examples

Find the inverse complementary error function of a scalar.

``````matlab
R = erfcinv(0.3)
``````

Evaluate boundary and out-of-domain values.

``````matlab
V = [-10 0 0.5 1.3 2 Inf];
R = erfcinv(V)
``````

Find the inverse complementary error function of the elements of a matrix.

``````matlab
M = [0.1 1.2; 1 0.9];
R = erfcinv(M)
``````

Avoid round-off from erfinv(1 - x) for very small x.

``````matlab
x = 1e-100;
A = erfinv(1 - x);
B = erfcinv(x);
``````


== See also

#nlink(<special_functions:erfc>)[erfc];, #nlink(<special_functions:erfinv>)[erfinv];, #nlink(<special_functions:erf>)[erf];, #nlink(<special_functions:erfcx>)[erfcx];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
