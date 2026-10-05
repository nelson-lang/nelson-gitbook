#import "nelson_help.typ": *

= ppval <polynomial_functions:ppval>

Evaluate a piecewise polynomial form

== Syntax

- #raw("vq = ppval(pp, xq)");

== Input argument

/ pp: Piecewise polynomial structure, such as the structure returned by interp1(..., 'pp').
/ xq: Query points.

== Output argument

/ vq: Values of the piecewise polynomial at xq.

== Description

#strong[ppval]; evaluates a piecewise polynomial structure. The structure contains breaks, coefficients, number of pieces, order, and output dimension.

 For the interpolation workflow, create pp with #strong[interp1(x, v, method, 'pp')];, then evaluate it repeatedly with #strong[ppval];.


== Example

``````matlab
x = 1:4;
v = [10 20 40 80];
pp = interp1(x, v, 'linear', 'pp');
ppval(pp, [1.5 2.5])
``````


== See also

#nlink(<special_functions:interp1>)[interp1];, #nlink(<polynomial_functions:polyval>)[polyval];.

// Author: Allan CORNET
