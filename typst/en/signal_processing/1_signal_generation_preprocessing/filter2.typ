#import "../nelson_help.typ": *

= filter2 <signal_processing:1_signal_generation_preprocessing.filter2>

2-D digital filter.

== Syntax

- #raw("Y = filter2(H, X)");
- #raw("Y = filter2(H, X, shape)");

== Input argument

/ H: coefficients of rational transfer function.
/ X: input data.
/ shape: 'same' (default), 'valid' or 'full'.

== Output argument

/ Y: result: 2-D digital filter.

== Description

#strong[Y \= filter2(H, X)]; applies a finite impulse response filter to a matrix of data X according to coefficients in a matrix#strong[H];.


== Example

``````matlab
A = zeros(10);
A(3:7, 3:7) = ones(5);
H = [1 2 1; 0 0 0; -1 -2 -1];
R = filter2(H, A, 'valid')
``````


== See also

#nlink(<data_analysis:conv2>)[conv2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
