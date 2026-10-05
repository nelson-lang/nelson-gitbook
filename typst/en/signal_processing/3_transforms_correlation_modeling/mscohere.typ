#import "../nelson_help.typ": *

= mscohere <signal_processing:3_transforms_correlation_modeling.mscohere>

Magnitude-squared coherence estimate.

== Syntax

- #raw("[Cxy, F] = mscohere(X, Y)");
- #raw("[Cxy, F] = mscohere(X, Y, window, noverlap, nfft, fs)");
- #raw("[Cxy, F] = mscohere(..., FREQRANGE)");

== Input argument

/ X, Y: input signals.
/ window: analysis window.
/ noverlap: number of overlapped samples.
/ nfft: FFT length.
/ fs: sample rate.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'");, or #raw("'whole'");.

== Output argument

/ Cxy: coherence estimate.
/ F: frequency vector.

== Description

#strong[mscohere]; estimates normalized linear correlation in the frequency domain.


== Example

``````matlab

[cxy, f] = mscohere(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'centered');

``````


== See also

#nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd];, #nlink(<signal_processing:3_transforms_correlation_modeling.tfestimate>)[tfestimate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
