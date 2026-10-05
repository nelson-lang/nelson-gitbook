#import "../nelson_help.typ": *

= xcorr2 <signal_processing:3_transforms_correlation_modeling.xcorr2>

2-D cross-correlation.

== Syntax

- #raw("C = xcorr2(A)");
- #raw("C = xcorr2(A, B)");

== Input argument

/ A: matrices
/ B: matrices

== Output argument

/ C: 2-D cross-correlation or autocorrelation matrix

== Description

#strong[xcorr2(A, B)]; calculates the cross-correlation between two matrices,#strong[A]; and #strong[B];, in two dimensions, without any scaling applied.


== Example

``````matlab
X = ones(2, 3);
H = [1 2; 3 4; 5 6];
C = xcorr2(H, X)
``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.filter2>)[filter2];, #nlink(<data_analysis:conv2>)[conv2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
