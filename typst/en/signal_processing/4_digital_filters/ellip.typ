#import "../nelson_help.typ": *

= ellip <signal_processing:4_digital_filters.ellip>

Elliptic digital filter design.

== Syntax

- #raw("[B, A] = ellip(N, Rp, Rs, Wn)");
- #raw("[B, A] = ellip(N, Rp, Rs, Wn, type)");
- #raw("[Z, P, K] = ellip(...)");

== Input argument

/ N: filter order.
/ Rp: passband ripple in dB.
/ Rs: stopband attenuation in dB.
/ Wn: normalized cutoff frequency or frequency pair.

== Output argument

/ B, A: transfer function coefficients.
/ Z, P, K: zero-pole-gain representation.

== Description

#strong[ellip]; designs lowpass, highpass, bandpass, and bandstop elliptic digital filters.


== Example

``````matlab

[b, a] = ellip(3, 1, 40, 0.25);

``````


== See also

#nlink(<signal_processing:4_digital_filters.ellipord>)[ellipord];, #nlink(<signal_processing:4_digital_filters.cheby2>)[cheby2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
