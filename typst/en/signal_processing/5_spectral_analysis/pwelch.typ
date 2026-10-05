#import "../nelson_help.typ": *

= pwelch <signal_processing:5_spectral_analysis.pwelch>

Welch power spectral density estimate.

== Syntax

- #raw("[Pxx, F] = pwelch(X)");
- #raw("[Pxx, F] = pwelch(X, window, noverlap, NFFT, Fs)");
- #raw("[Pxx, F] = pwelch(..., FREQRANGE)");
- #raw("[Pxx, F] = pwelch(..., SPECTRUMTYPE)");

== Input argument

/ X: input signal.
/ window: window vector or length.
/ noverlap: number of overlapping samples.
/ NFFT: FFT length.
/ Fs: sample rate.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'");, or #raw("'whole'");.
/ SPECTRUMTYPE: #raw("'psd'"); or #raw("'power'");.

== Output argument

/ Pxx: averaged spectral estimate.
/ F: frequency vector.

== Description

#strong[pwelch]; estimates a spectrum by averaging periodograms of overlapped segments.


== Example

``````matlab

[pxx, f] = pwelch(rand(256, 1), hamming(64), 32, 128, 1, 'centered');

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram];, #nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
