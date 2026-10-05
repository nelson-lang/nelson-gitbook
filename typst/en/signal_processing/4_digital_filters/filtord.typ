#import "../nelson_help.typ": *

= filtord <signal_processing:4_digital_filters.filtord>

Digital filter order.

== Syntax

- #raw("N = filtord(B, A)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.

== Output argument

/ N: filter order.

== Description

#strong[filtord]; returns the order implied by nonzero numerator and denominator coefficients.


== Example

``````matlab

n = filtord([1 0 0], [1 -0.5]);

``````


== See also

#nlink(<signal_processing:4_digital_filters.isfir>)[isfir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
