#import "../nelson_help.typ": *

= poissinv <statistics:2_probability_distributions.poissinv>

Poisson inverse cumulative distribution function

== Syntax

- #raw("x = poissinv(y, lambda)");

== Input argument

/ y: real numeric array of probabilities.
/ lambda: nonnegative rate parameter.

== Output argument

/ x: smallest integer values whose cumulative probabilities are at least y.

== Description

#strong[poissinv]; computes inverse lower-tail Poisson probabilities.


== Example

``````matlab
y = [0.025 0.5 0.975];
x = poissinv(y, 4);
``````


== See also

#nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];, #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
