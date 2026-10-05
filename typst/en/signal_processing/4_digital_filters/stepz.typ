#import "../nelson_help.typ": *

= stepz <signal_processing:4_digital_filters.stepz>

Step response of a digital filter.

== Syntax

- #raw("[S, T] = stepz(B, A)");
- #raw("[S, T] = stepz(B, A, N)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.
/ N: number of samples.

== Output argument

/ S: step response.
/ T: sample or time vector.

== Description

#strong[stepz]; computes the cumulative sum of the impulse response.


== Example

``````matlab

[s, t] = stepz([1 1], 1, 4);

``````


== See also

#nlink(<signal_processing:4_digital_filters.impz>)[impz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
