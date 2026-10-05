#import "../nelson_help.typ": *

= impz <signal_processing:4_digital_filters.impz>

Impulse response of a digital filter.

== Syntax

- #raw("[H, T] = impz(B, A)");
- #raw("[H, T] = impz(B, A, N)");
- #raw("[H, T] = impz(B, A, N, Fs)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.
/ N: number of samples.
/ Fs: sample rate.

== Output argument

/ H: impulse response.
/ T: sample or time vector.

== Description

#strong[impz]; filters a unit impulse through the filter defined by B and A.


== Example

``````matlab

[h, t] = impz([1 1], 1, 4);

``````


== See also

#nlink(<signal_processing:4_digital_filters.stepz>)[stepz];, #nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
