#import "../nelson_help.typ": *

= impzlength <signal_processing:4_digital_filters.impzlength>

Length estimate for an impulse response.

== Syntax

- #raw("N = impzlength(B, A)");
- #raw("N = impzlength(B, A, tolerance)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.
/ tolerance: response truncation tolerance.

== Output argument

/ N: estimated response length.

== Description

#strong[impzlength]; returns a practical length for impulse response calculations.


== Example

``````matlab

n = impzlength([1 1], 1);

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
