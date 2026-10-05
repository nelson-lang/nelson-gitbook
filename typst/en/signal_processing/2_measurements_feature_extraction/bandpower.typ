#import "../nelson_help.typ": *

= bandpower <signal_processing:2_measurements_feature_extraction.bandpower>

Estimate signal power in a frequency band.

== Syntax

- #raw("P = bandpower(X)");
- #raw("P = bandpower(X, Fs, freqRange)");
- #raw("P = bandpower(Pxx, F, 'psd')");
- #raw("P = bandpower(Pxx, F, freqRange, 'psd')");

== Input argument

/ X: input time-domain signal.
/ Fs: sample rate.
/ freqRange: two-element frequency range.
/ Pxx, F: power spectral density estimate and matching frequency vector.

== Output argument

/ P: estimated average power.

== Description

#strong[bandpower]; computes average time-domain power, or integrates a PSD estimate with a rectangle approximation. For time-domain band measurements, a Hamming-window periodogram with the input length is used.


== Example

``````matlab

p = bandpower(sin((0:127)' * 0.1), 10, [0 5]);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram];, #nlink(<signal_processing:2_measurements_feature_extraction.meanfreq>)[meanfreq];, #nlink(<signal_processing:2_measurements_feature_extraction.medfreq>)[medfreq];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
