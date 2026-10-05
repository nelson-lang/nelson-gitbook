#import "../nelson_help.typ": *

= snr <signal_processing:2_measurements_feature_extraction.snr>

Signal-to-noise ratio.

== Syntax

- #raw("R = snr(X)");
- #raw("R = snr(X, Noise)");
- #raw("R = snr(X, Fs)");
- #raw("[R, NoisePower] = snr(...)");

== Input argument

/ X: signal.
/ Noise: noise signal with the same dimensions as X.
/ Fs: sample rate for spectral SNR estimation.

== Output argument

/ R: ratio in decibels.
/ NoisePower: linear noise power estimate for direct noise input, or noise power in decibels for spectral estimation.

== Description

#strong[snr]; computes a direct signal-to-noise ratio when a noise vector is supplied. With a scalar sample rate, it estimates sinusoidal SNR from the spectrum.


== Example

``````matlab

[r, n] = snr([1 1 1], [0.1 0.1 0.1]);

``````


== See also

#nlink(<signal_processing:2_measurements_feature_extraction.thd>)[thd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
