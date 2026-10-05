#import "../nelson_help.typ": *

= spectrogram <signal_processing:6_time_frequency_analysis.spectrogram>

Spectrogram using short-time Fourier transforms.

== Syntax

- #raw("[S, F, T] = spectrogram(X)");
- #raw("[S, F, T, P] = spectrogram(X, window, noverlap, NFFT, Fs)");

== Input argument

/ X: input signal.
/ window: window vector or length.
/ noverlap: number of overlapping samples.
/ NFFT: FFT length.
/ Fs: sample rate.

== Output argument

/ S: complex short-time spectrum.
/ F: frequency vector.
/ T: time vector.
/ P: power spectral density estimate.

== Description

#strong[spectrogram]; splits the signal into overlapping windowed segments and computes an FFT for each segment.


== Example

``````matlab

[s, f, t] = spectrogram(sin((0:255)' * 0.1), 64, 32, 128, 10);

``````


== See also

#nlink(<signal_processing:6_time_frequency_analysis.stft>)[stft];, #nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
