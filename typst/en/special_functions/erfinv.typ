#import "nelson_help.typ": *

= erfinv <special_functions:erfinv>

Inverse error function

== Syntax

- #raw("R = erfinv(X)");

== Input argument

/ X: a real single or real double scalar, vector, matrix, or multidimensional array. Sparse and complex inputs are not supported.

== Output argument

/ R: inverse error function values, returned with the same size and floating-point class as X.

== Description

#strong[erfinv]; computes the inverse error function element by element.

 The inverse error function is defined by:

 #latex("erfinv(erf(x)) = x"); Values outside the interval \[-1, 1\] return NaN. The values -1 and 1 return -Inf and Inf, respectively.

 For expressions of the form #strong[erfinv(1 - x)];, use #strong[erfcinv(x)]; for better accuracy when x is small.


== Examples

Find the inverse error function of a scalar.

``````matlab
R = erfinv(0.25)
``````

Evaluate boundary and out-of-domain values.

``````matlab
R = erfinv([-2 -1 1 2])
``````

Find the inverse error function of the elements of a matrix.

``````matlab
M = [0 -0.5; 0.9 -0.2];
R = erfinv(M)
``````

Generate normally distributed values from uniform values in \[-1, 1\].

``````matlab
x = -1 + 2 * rand(1, 10000);
y = sqrt(2) * erfinv(x);
``````


== See also

#nlink(<special_functions:erf>)[erf];, #nlink(<special_functions:erfcinv>)[erfcinv];, #nlink(<special_functions:erfc>)[erfc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
