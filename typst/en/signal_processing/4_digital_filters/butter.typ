#import "../nelson_help.typ": *

= butter <signal_processing:4_digital_filters.butter>

Butterworth digital filter design.

== Syntax

- #raw("[B, A] = butter(N, Wn)");
- #raw("[B, A] = butter(N, Wn, type)");
- #raw("[Z, P, K] = butter(...)");

== Input argument

/ N: filter order.
/ Wn: normalized cutoff frequency.
/ type: optional filter type.

== Output argument

/ B: numerator coefficients.
/ A: denominator coefficients.
/ Z, P, K: zero-pole-gain representation.

== Description

#strong[butter]; designs a Butterworth IIR digital filter.


== Example

``````matlab

[b, a] = butter(2, 0.4);
[h, w] = freqz(b, a, 64);

``````


== See also

#nlink(<signal_processing:4_digital_filters.buttord>)[buttord];, #nlink(<signal_processing:4_digital_filters.freqz>)[freqz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
