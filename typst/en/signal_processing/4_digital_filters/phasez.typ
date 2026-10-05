#import "../nelson_help.typ": *

= phasez <signal_processing:4_digital_filters.phasez>

Phase response of a digital filter.

== Syntax

- #raw("[P, W] = phasez(B, A)");
- #raw("[P, W] = phasez(B, A, N)");
- #raw("[P, F] = phasez(B, A, N, Fs)");
- #raw("[P, W] = phasez(B, A, N, 'whole')");
- #raw("[P, F] = phasez(B, A, N, Fs, 'whole')");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.
/ N: number of frequency samples.
/ Fs: sampling frequency.

== Output argument

/ P: unwrapped phase response.
/ W, F: frequency vector.

== Description

#strong[phasez]; computes the unwrapped phase of the frequency response returned by freqz.


== Example

``````matlab

[p, w] = phasez([1 1], 1, 16);

``````


== See also

#nlink(<signal_processing:4_digital_filters.freqz>)[freqz];, #nlink(<signal_processing:4_digital_filters.grpdelay>)[grpdelay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
