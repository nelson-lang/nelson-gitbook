#import "../nelson_help.typ": *

= expcdf <statistics:2_probability_distributions.expcdf>

Exponential cumulative distribution function

== Syntax

- #raw("p = expcdf(x)");
- #raw("p = expcdf(x, mu)");
- #raw("p = expcdf(x, mu, 'upper')");

== Input argument

/ x: real numeric array.
/ mu: positive mean parameter, default 1.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[expcdf]; computes lower-tail exponential probabilities by default and upper-tail probabilities with #strong['upper'];.


== Example

``````matlab
x = [0 0.5 1 2];
p = expcdf(x, 3);
q = expcdf(x, 3, 'upper');
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
