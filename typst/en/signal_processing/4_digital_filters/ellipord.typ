#import "../nelson_help.typ": *

= ellipord <signal_processing:4_digital_filters.ellipord>

Minimum order for an elliptic filter.

== Syntax

- #raw("[N, Wn] = ellipord(Wp, Ws, Rp, Rs)");

== Input argument

/ Wp: passband edge frequency.
/ Ws: stopband edge frequency.
/ Rp: passband ripple in dB.
/ Rs: stopband attenuation in dB.

== Output argument

/ N: filter order.
/ Wn: cutoff frequency.

== Description

#strong[ellipord]; estimates an order and cutoff for elliptic filter design.


== Example

``````matlab

[n, wn] = ellipord(0.2, 0.3, 1, 40);

``````


== See also

#nlink(<signal_processing:4_digital_filters.ellip>)[ellip];, #nlink(<signal_processing:4_digital_filters.buttord>)[buttord];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
