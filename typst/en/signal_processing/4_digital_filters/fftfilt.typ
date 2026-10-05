#import "../nelson_help.typ": *

= fftfilt <signal_processing:4_digital_filters.fftfilt>

FIR filtering helper.

== Syntax

- #raw("Y = fftfilt(B, X)");

== Input argument

/ B: FIR coefficients.
/ X: input signal or matrix.

== Output argument

/ Y: filtered signal.

== Description

#strong[fftfilt]; returns the first length(X) samples of convolution between B and X. Matrix inputs are filtered column by column.


== Example

``````matlab

y = fftfilt([1 1], [1 2 3]);

``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
