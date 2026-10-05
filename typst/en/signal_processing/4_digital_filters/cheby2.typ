#import "../nelson_help.typ": *

= cheby2 <signal_processing:4_digital_filters.cheby2>

Chebyshev type II digital filter design.

== Syntax

- #raw("[B, A] = cheby2(N, Rs, Wn)");
- #raw("[B, A] = cheby2(N, Rs, Wn, type)");
- #raw("[Z, P, K] = cheby2(...)");

== Input argument

/ N: filter order.
/ Rs: stopband attenuation in dB.
/ Wn: normalized cutoff frequency or frequency pair.
/ type: filter type.

== Output argument

/ B, A: transfer function coefficients.
/ Z, P, K: zero-pole-gain representation.

== Description

#strong[cheby2]; designs lowpass, highpass, bandpass, and bandstop Chebyshev type II digital filters.


== Example

``````matlab

[b, a] = cheby2(3, 40, 0.25);

``````


== See also

#nlink(<signal_processing:4_digital_filters.cheby1>)[cheby1];, #nlink(<signal_processing:4_digital_filters.ellip>)[ellip];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
