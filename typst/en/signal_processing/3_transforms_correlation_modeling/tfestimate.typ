#import "../nelson_help.typ": *

= tfestimate <signal_processing:3_transforms_correlation_modeling.tfestimate>

Transfer function estimate.

== Syntax

- #raw("[Txy, F] = tfestimate(X, Y)");
- #raw("[Txy, F] = tfestimate(X, Y, window, noverlap, nfft, fs)");
- #raw("[Txy, F] = tfestimate(..., FREQRANGE)");

== Input argument

/ X, Y: input and output signals.
/ window: analysis window.
/ noverlap: number of overlapped samples.
/ nfft: FFT length.
/ fs: sample rate.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'");, or #raw("'whole'");.

== Output argument

/ Txy: transfer function estimate.
/ F: frequency vector.

== Description

#strong[tfestimate]; estimates a frequency response from input and output signals.


== Example

``````matlab

[txy, f] = tfestimate(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

``````


== See also

#nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd];, #nlink(<signal_processing:3_transforms_correlation_modeling.mscohere>)[mscohere];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
