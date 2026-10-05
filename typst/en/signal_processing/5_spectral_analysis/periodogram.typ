#import "../nelson_help.typ": *

= periodogram <signal_processing:5_spectral_analysis.periodogram>

Power spectral density estimate using a periodogram.

== Syntax

- #raw("[Pxx, F] = periodogram(X)");
- #raw("[Pxx, F] = periodogram(X, WINDOW, NFFT, Fs)");
- #raw("[Pxx, F] = periodogram(..., FREQRANGE)");
- #raw("[Pxx, F] = periodogram(..., SPECTRUMTYPE)");

== Input argument

/ X: input signal.
/ WINDOW: window vector or length.
/ NFFT: FFT length.
/ Fs: sample rate.
/ FREQRANGE: "onesided", "twosided", "centered", "half", or "whole". "half" is treated as "onesided" and "whole" as "twosided".
/ SPECTRUMTYPE: "psd" or "power".

== Output argument

/ Pxx: power spectral density or power spectrum estimate.
/ F: frequency vector.

== Description

#strong[periodogram]; estimates signal power distribution over frequency.


== Example

``````matlab

[pxx, f] = periodogram(sin((0:127)' * 0.1), [], 128, 10);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.pwelch>)[pwelch];, #nlink(<signal_processing:6_time_frequency_analysis.spectrogram>)[spectrogram];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
