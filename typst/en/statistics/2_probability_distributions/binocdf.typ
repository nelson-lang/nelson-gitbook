#import "../nelson_help.typ": *

= binocdf <statistics:2_probability_distributions.binocdf>

Binomial cumulative distribution function

== Syntax

- #raw("p = binocdf(x, n, prob)");
- #raw("p = binocdf(x, n, prob, 'upper')");

== Input argument

/ x: real numeric array.
/ n: nonnegative integer number of trials.
/ prob: success probability in the range \[0,1\].

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[binocdf]; computes lower-tail binomial probabilities by default and upper-tail probabilities with #strong['upper'];.


== Example

``````matlab
x = 0:10;
p = binocdf(x, 10, 0.4);
q = binocdf(x, 10, 0.4, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];, #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
