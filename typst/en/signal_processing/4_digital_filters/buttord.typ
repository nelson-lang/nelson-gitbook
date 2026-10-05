#import "../nelson_help.typ": *

= buttord <signal_processing:4_digital_filters.buttord>

Minimum order for a Butterworth filter.

== Syntax

- #raw("[N, Wn] = buttord(Wp, Ws, Rp, Rs)");

== Input argument

/ Wp: passband edge frequency.
/ Ws: stopband edge frequency.
/ Rp: passband ripple in dB.
/ Rs: stopband attenuation in dB.

== Output argument

/ N: filter order.
/ Wn: natural cutoff frequency.

== Description

#strong[buttord]; estimates the lowest Butterworth order satisfying the frequency specifications.


== Example

``````matlab

[n, wn] = buttord(0.2, 0.3, 1, 40);

``````


== See also

#nlink(<signal_processing:4_digital_filters.butter>)[butter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
