#import "../nelson_help.typ": *

= stft <signal_processing:6_time_frequency_analysis.stft>

Short-time Fourier transform.

== Syntax

- #raw("[S, F, T] = stft(X)");
- #raw("[S, F, T] = stft(X, Fs)");
- #raw("[S, F, T] = stft(X, Fs, 'Window', window, 'OverlapLength', overlap, 'FFTLength', nfft)");
- #raw("[S, F, T] = stft(..., 'FrequencyRange', range)");

== Input argument

/ X: input vector.
/ Fs: sample rate. The default value is 1.
/ window: analysis window. The default value is hamming(128).
/ overlap: overlap length. It must be less than the window length.
/ nfft: FFT length. It must be greater than or equal to the window length.
/ range: frequency range: 'centered', 'twosided', or 'onesided'.

== Output argument

/ S: short-time transform matrix.
/ F: frequency vector.
/ T: time vector.

== Description

#strong[stft]; splits the input vector into overlapping windowed frames and computes one FFT per frame. The output can be centered, two-sided, or one-sided.


== Example

``````matlab

[s, f, t] = stft(sin((0:31)' * 0.2), 10, 'Window', hamming(8), 'OverlapLength', 4, 'FFTLength', 16, 'FrequencyRange', 'onesided');

``````


== See also

#nlink(<signal_processing:6_time_frequency_analysis.istft>)[istft];, #nlink(<signal_processing:6_time_frequency_analysis.spectrogram>)[spectrogram];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
