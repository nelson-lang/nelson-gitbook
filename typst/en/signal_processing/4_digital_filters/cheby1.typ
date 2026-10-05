#import "../nelson_help.typ": *

= cheby1 <signal_processing:4_digital_filters.cheby1>

Chebyshev type I digital filter design.

== Syntax

- #raw("[B, A] = cheby1(N, Rp, Wn)");
- #raw("[B, A] = cheby1(N, Rp, Wn, type)");
- #raw("[Z, P, K] = cheby1(...)");

== Input argument

/ N: filter order.
/ Rp: passband ripple in dB.
/ Wn: normalized cutoff frequency or frequency pair.
/ type: filter type.

== Output argument

/ B, A: transfer function coefficients.
/ Z, P, K: zero-pole-gain representation.

== Description

#strong[cheby1]; designs lowpass, highpass, bandpass, and bandstop Chebyshev type I digital filters.


== Example

``````matlab

[b, a] = cheby1(3, 1, 0.25);

``````


== See also

#nlink(<signal_processing:4_digital_filters.butter>)[butter];, #nlink(<signal_processing:4_digital_filters.cheb1ord>)[cheb1ord];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
