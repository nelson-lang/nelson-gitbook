#import "../nelson_help.typ": *

= poisscdf <statistics:2_probability_distributions.poisscdf>

Poisson cumulative distribution function

== Syntax

- #raw("p = poisscdf(x, lambda)");
- #raw("p = poisscdf(x, lambda, 'upper')");

== Input argument

/ x: real numeric array.
/ lambda: nonnegative rate parameter.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[poisscdf]; computes lower-tail Poisson probabilities by default and upper-tail probabilities with #strong['upper'];.


== Example

``````matlab
x = 0:10;
p = poisscdf(x, 4);
q = poisscdf(x, 4, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
