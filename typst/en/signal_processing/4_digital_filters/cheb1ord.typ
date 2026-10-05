#import "../nelson_help.typ": *

= cheb1ord <signal_processing:4_digital_filters.cheb1ord>

Minimum order for a Chebyshev type I filter.

== Syntax

- #raw("[N, Wn] = cheb1ord(Wp, Ws, Rp, Rs)");

== Input argument

/ Wp: passband edge frequency.
/ Ws: stopband edge frequency.
/ Rp: passband ripple in dB.
/ Rs: stopband attenuation in dB.

== Output argument

/ N: filter order.
/ Wn: cutoff frequency.

== Description

#strong[cheb1ord]; estimates an order and cutoff for Chebyshev type I filter design.


== Example

``````matlab

[n, wn] = cheb1ord(0.2, 0.3, 1, 40);

``````


== See also

#nlink(<signal_processing:4_digital_filters.cheby1>)[cheby1];, #nlink(<signal_processing:4_digital_filters.buttord>)[buttord];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
