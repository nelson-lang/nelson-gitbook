#import "../nelson_help.typ": *

= cpsd <signal_processing:3_transforms_correlation_modeling.cpsd>

Cross power spectral density estimate.

== Syntax

- #raw("[Pxy, F] = cpsd(X, Y)");
- #raw("[Pxy, F] = cpsd(X, Y, window, noverlap, nfft, fs)");
- #raw("[Pxy, F] = cpsd(..., FREQRANGE)");

== Input argument

/ X, Y: input signals.
/ window: analysis window.
/ noverlap: number of overlapped samples.
/ nfft: FFT length.
/ fs: sample rate.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'");, or #raw("'whole'");.

== Output argument

/ Pxy: cross spectral density estimate.
/ F: frequency vector.

== Description

#strong[cpsd]; estimates cross spectral density between two signals by averaging overlapped segments.


== Example

``````matlab

[pxy, f] = cpsd(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.pwelch>)[pwelch];, #nlink(<signal_processing:3_transforms_correlation_modeling.mscohere>)[mscohere];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
