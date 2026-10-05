#import "nelson_help.typ": *

= deconv <polynomial_functions:deconv>

Deconvolution and polynomial division.

== Syntax

- #raw("[q, r] = deconv(b, a)");

== Input argument

/ a: row or column vectors
/ b: row or column vectors

== Output argument

/ q: quotient: row or column vector
/ r: remainder: row or column vector

== Description

#strong[\[q, r\] \= deconv(b, a)]; performs deconvolution on vector#strong[b]; by vector #strong[a]; using long division.

 It returns the quotient #strong[q]; and remainder#strong[r]; such that #strong[b \= conv(a, q) + r];.

 In the context of polynomial coefficients, deconvolving vectors#strong[b]; and #strong[a]; is akin to dividing the polynomial represented by#strong[b]; by the polynomial represented by #strong[a];.


== Example

``````matlab

b = [1; 2; -1];  % Dividend (x^2 + 2x - 1)
a = [1; 1];      % Divisor (x + 1)

[q, r] = deconv(b, a)
``````


== See also

#nlink(<data_analysis:conv>)[conv];, #nlink(<polynomial_functions:poly>)[poly];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
