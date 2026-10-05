#import "../nelson_help.typ": *

= poisspdf <statistics:2_probability_distributions.poisspdf>

Poisson probability density function

== Syntax

- #raw("y = poisspdf(x, lambda)");

== Input argument

/ x: real numeric array.
/ lambda: nonnegative rate parameter.

== Output argument

/ y: probability mass values.

== Description

#strong[poisspdf]; computes Poisson probability mass values. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = 0:10;
y = poisspdf(x, 4);
``````


== See also

#nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];, #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
