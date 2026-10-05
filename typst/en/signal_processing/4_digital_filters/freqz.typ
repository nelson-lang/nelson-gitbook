#import "../nelson_help.typ": *

= freqz <signal_processing:4_digital_filters.freqz>

Frequency response of a digital filter.

== Syntax

- #raw("[H, W] = freqz(B, A)");
- #raw("[H, W] = freqz(B, A, N)");
- #raw("[H, W] = freqz(B, A, N, 'whole')");
- #raw("[H, F] = freqz(B, A, N, Fs)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.
/ N: number of frequency samples or vector of frequencies.
/ Fs: sample rate.

== Output argument

/ H: complex frequency response.
/ W: frequencies in radians per sample.
/ F: frequencies in cycles per unit time when Fs is supplied.

== Description

#strong[freqz]; evaluates the transfer function defined by B and A on the unit circle.


== Example

``````matlab

[h, w] = freqz([1 1], 1, 8);

``````


== See also

#nlink(<signal_processing:4_digital_filters.phasez>)[phasez];, #nlink(<signal_processing:4_digital_filters.grpdelay>)[grpdelay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
