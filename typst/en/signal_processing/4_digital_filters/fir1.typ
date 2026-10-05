#import "../nelson_help.typ": *

= fir1 <signal_processing:4_digital_filters.fir1>

Window-based FIR filter design.

== Syntax

- #raw("B = fir1(N, Wn)");
- #raw("B = fir1(N, Wn, type)");
- #raw("B = fir1(N, Wn, window)");

== Input argument

/ N: filter order.
/ Wn: normalized cutoff frequency or frequency pair.
/ type: filter type such as 'low', 'high', 'bandpass', or 'stop'.
/ window: window vector of length N + 1.

== Output argument

/ B: FIR numerator coefficients.

== Description

#strong[fir1]; designs a linear-phase FIR filter by windowing an ideal impulse response.


== Example

``````matlab

b = fir1(16, 0.25);

``````


== See also

#nlink(<signal_processing:4_digital_filters.freqz>)[freqz];, #nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
