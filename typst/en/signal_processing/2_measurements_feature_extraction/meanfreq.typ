#import "../nelson_help.typ": *

= meanfreq <signal_processing:2_measurements_feature_extraction.meanfreq>

Mean frequency of a signal spectrum.

== Syntax

- #raw("Fmean = meanfreq(X)");
- #raw("Fmean = meanfreq(X, Fs)");
- #raw("Fmean = meanfreq(Pxx, F)");
- #raw("[Fmean, P] = meanfreq(...)");

== Input argument

/ X: input time-domain signal.
/ Fs: sample rate.
/ Pxx, F: power spectral density estimate and matching frequency vector.

== Output argument

/ Fmean: power-weighted mean frequency.
/ P: power used for the measurement.

== Description

#strong[meanfreq]; computes the power-weighted mean frequency. Time-domain inputs use a rectangular-window periodogram with the input length.


== Example

``````matlab

[f, p] = meanfreq(sin((0:127)' * 0.1), 10);

``````


== See also

#nlink(<signal_processing:2_measurements_feature_extraction.medfreq>)[medfreq];, #nlink(<signal_processing:2_measurements_feature_extraction.bandpower>)[bandpower];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
