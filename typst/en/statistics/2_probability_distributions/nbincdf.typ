#import "../nelson_help.typ": *

= nbincdf <statistics:2_probability_distributions.nbincdf>

Negative binomial cumulative distribution function

== Syntax

- #raw("pout = nbincdf(x, r, p)");
- #raw("pout = nbincdf(x, r, p, 'upper')");

== Input argument

/ x: real numeric array: number of failures.
/ r: positive scalar or array: number of successes.
/ p: scalar or array in the range \[0, 1\]: success probability.

== Output argument

/ pout: cumulative probabilities.

== Description

#strong[nbincdf]; computes cumulative probabilities for the negative binomial distribution.


== Example

``````matlab
x = 0:5;
pout = nbincdf(x, 3, 0.4);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
