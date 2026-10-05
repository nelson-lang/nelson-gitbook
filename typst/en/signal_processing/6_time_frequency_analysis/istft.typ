#import "../nelson_help.typ": *

= istft <signal_processing:6_time_frequency_analysis.istft>

Inverse short-time Fourier transform.

== Syntax

- #raw("X = istft(S)");
- #raw("X = istft(S, Fs)");
- #raw("X = istft(S, Fs, 'Window', window, 'OverlapLength', overlap, 'FFTLength', nfft)");
- #raw("X = istft(..., 'FrequencyRange', range)");

== Input argument

/ S: short-time transform matrix.
/ Fs: sample rate accepted for API compatibility.
/ window: synthesis window.
/ overlap: overlap length. It must be less than the window length.
/ nfft: FFT length. It must be greater than or equal to the window length.
/ range: frequency range of S: 'centered', 'twosided', or 'onesided'.

== Output argument

/ X: reconstructed time-domain vector.

== Description

#strong[istft]; reconstructs a time-domain vector from short-time spectra using inverse FFT and overlap-add normalization.


== Example

``````matlab

x = sin((0:31)' * 0.2);
[s, f, t] = stft(x, 10, 'Window', hamming(8), 'OverlapLength', 4, 'FFTLength', 16, 'FrequencyRange', 'onesided');
y = istft(s, 10, 'Window', hamming(8), 'OverlapLength', 4, 'FFTLength', 16, 'FrequencyRange', 'onesided');

``````


== See also

#nlink(<signal_processing:6_time_frequency_analysis.stft>)[stft];, #nlink(<signal_processing:6_time_frequency_analysis.spectrogram>)[spectrogram];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
