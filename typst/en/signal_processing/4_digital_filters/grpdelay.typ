#import "../nelson_help.typ": *

= grpdelay <signal_processing:4_digital_filters.grpdelay>

Group delay of a digital filter.

== Syntax

- #raw("[Gd, W] = grpdelay(B, A)");
- #raw("[Gd, W] = grpdelay(B, A, N)");
- #raw("[Gd, F] = grpdelay(B, A, N, Fs)");
- #raw("[Gd, W] = grpdelay(B, A, N, 'whole')");
- #raw("[Gd, F] = grpdelay(B, A, N, 'whole', Fs)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.
/ N: number of frequency samples.
/ Fs: sampling frequency.

== Output argument

/ Gd: group delay.
/ W, F: frequency vector.

== Description

#strong[grpdelay]; computes group delay from the transfer function frequency derivative.


== Example

``````matlab

[gd, w] = grpdelay([1 1], 1, 16);

``````


== See also

#nlink(<signal_processing:4_digital_filters.phasez>)[phasez];, #nlink(<signal_processing:4_digital_filters.freqz>)[freqz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
