#import "../nelson_help.typ": *

= sgolayfilt <signal_processing:1_signal_generation_preprocessing.sgolayfilt>

Savitzky-Golay smoothing filter.

== Syntax

- #raw("Y = sgolayfilt(X, K, F)");
- #raw("Y = sgolayfilt(X, K, F, W)");
- #raw("Y = sgolayfilt(X, K, F, W, DIM)");

== Input argument

/ X: input signal.
/ K: polynomial order.
/ F: frame length.
/ W: positive weighting vector. Use \[\] for default weights.
/ DIM: dimension to filter along.

== Output argument

/ Y: smoothed signal.

== Description

#strong[sgolayfilt]; smooths data using Savitzky-Golay FIR coefficients.


== Example

``````matlab

y = sgolayfilt([1 2 3 2 1], 2, 5);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.sgolay>)[sgolay];, #nlink(<signal_processing:1_signal_generation_preprocessing.medfilt1>)[medfilt1];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
