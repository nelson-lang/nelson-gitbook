#import "../nelson_help.typ": *

= thd <signal_processing:2_measurements_feature_extraction.thd>

Total harmonic distortion estimate.

== Syntax

- #raw("D = thd(X)");
- #raw("D = thd(X, Fs)");

== Input argument

/ X: input signal.
/ Fs: sample rate.

== Output argument

/ D: distortion estimate in decibels.

== Description

#strong[thd]; estimates total harmonic distortion from FFT magnitudes.


== Example

``````matlab

d = thd(sin((0:255)' * 0.1));

``````


== See also

#nlink(<signal_processing:2_measurements_feature_extraction.snr>)[snr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
