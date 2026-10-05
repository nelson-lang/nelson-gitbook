#import "../nelson_help.typ": *

= cheb2ord <signal_processing:4_digital_filters.cheb2ord>

Minimum order for a Chebyshev type II filter.

== Syntax

- #raw("[N, Wn] = cheb2ord(Wp, Ws, Rp, Rs)");

== Input argument

/ Wp: passband edge frequency or frequency pair.
/ Ws: stopband edge frequency or frequency pair.
/ Rp: passband ripple in dB.
/ Rs: stopband attenuation in dB.

== Output argument

/ N: filter order.
/ Wn: stopband cutoff frequency for Chebyshev type II design.

== Description

#strong[cheb2ord]; estimates an order and cutoff for Chebyshev type II filter design.


== Example

``````matlab

[n, wn] = cheb2ord(0.2, 0.3, 1, 40);

``````


== See also

#nlink(<signal_processing:4_digital_filters.cheby2>)[cheby2];, #nlink(<signal_processing:4_digital_filters.cheb1ord>)[cheb1ord];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
