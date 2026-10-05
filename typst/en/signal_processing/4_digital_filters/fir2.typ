#import "../nelson_help.typ": *

= fir2 <signal_processing:4_digital_filters.fir2>

Frequency sampling FIR filter design.

== Syntax

- #raw("B = fir2(N, F, M)");
- #raw("B = fir2(N, F, M, window)");

== Input argument

/ N: filter order.
/ F: normalized frequency breakpoints.
/ M: desired magnitudes.
/ window: window vector.

== Output argument

/ B: FIR numerator coefficients.

== Description

#strong[fir2]; designs a linear-phase FIR filter from an arbitrary frequency response.


== Example

``````matlab

b = fir2(16, [0 0.4 0.6 1], [1 1 0 0]);

``````


== See also

#nlink(<signal_processing:4_digital_filters.fir1>)[fir1];, #nlink(<signal_processing:4_digital_filters.freqz>)[freqz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
