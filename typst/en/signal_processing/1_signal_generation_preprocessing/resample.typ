#import "../nelson_help.typ": *

= resample <signal_processing:1_signal_generation_preprocessing.resample>

Change sample rate by a rational factor.

== Syntax

- #raw("Y = resample(X, P, Q)");
- #raw("Y = resample(X, P, Q, N)");
- #raw("Y = resample(X, P, Q, N, Beta)");
- #raw("Y = resample(X, P, Q, B)");
- #raw("Y = resample(..., 'Dimension', Dim)");

== Input argument

/ X: input signal or array.
/ P: upsampling factor.
/ Q: downsampling factor.
/ N: filter half-length factor. Default is 10.
/ Beta: Kaiser window shape parameter. Default is 5.
/ B: FIR antialiasing filter coefficients.
/ Dim: dimension to operate along.

== Output argument

/ Y: resampled signal.

== Description

#strong[resample]; changes a signal sample rate by filtering between upsampling and downsampling stages.


== Example

``````matlab

y = resample(1:10, 3, 2);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn];, #nlink(<signal_processing:1_signal_generation_preprocessing.decimate>)[decimate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
