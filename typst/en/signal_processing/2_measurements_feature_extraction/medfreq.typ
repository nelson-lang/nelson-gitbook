#import "../nelson_help.typ": *

= medfreq <signal_processing:2_measurements_feature_extraction.medfreq>

Median frequency of a signal spectrum.

== Syntax

- #raw("Fmed = medfreq(X)");
- #raw("Fmed = medfreq(X, Fs)");
- #raw("Fmed = medfreq(Pxx, F)");
- #raw("[Fmed, P] = medfreq(...)");

== Input argument

/ X: input time-domain signal.
/ Fs: sample rate.
/ Pxx, F: power spectral density estimate and matching frequency vector.

== Output argument

/ Fmed: frequency dividing the spectral power into two equal parts.
/ P: power used for the measurement.

== Description

#strong[medfreq]; computes the median frequency with rectangular spectral integration and linear interpolation between bin borders.


== Example

``````matlab

[f, p] = medfreq(sin((0:127)' * 0.1), 10);

``````


== See also

#nlink(<signal_processing:2_measurements_feature_extraction.meanfreq>)[meanfreq];, #nlink(<signal_processing:2_measurements_feature_extraction.bandpower>)[bandpower];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
