#import "../nelson_help.typ": *

= isfir <signal_processing:4_digital_filters.isfir>

Determine whether a digital filter is FIR.

== Syntax

- #raw("tf = isfir(B, A)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.

== Output argument

/ tf: true if the filter is finite impulse response.

== Description

#strong[isfir]; tests whether the denominator has no recursive part.


== Example

``````matlab

tf = isfir([1 2 3], 1);

``````


== See also

#nlink(<signal_processing:4_digital_filters.filtord>)[filtord];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
