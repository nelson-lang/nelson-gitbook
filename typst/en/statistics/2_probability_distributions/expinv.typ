#import "../nelson_help.typ": *

= expinv <statistics:2_probability_distributions.expinv>

Exponential inverse cumulative distribution function

== Syntax

- #raw("x = expinv(p)");
- #raw("x = expinv(p, mu)");

== Input argument

/ p: real numeric array of probabilities.
/ mu: positive mean parameter, default 1.

== Output argument

/ x: inverse lower-tail exponential values.

== Description

#strong[expinv]; computes inverse lower-tail exponential probabilities.


== Example

``````matlab
p = [0.025 0.5 0.975];
x = expinv(p, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
