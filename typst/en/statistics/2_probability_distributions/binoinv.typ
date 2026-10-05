#import "../nelson_help.typ": *

= binoinv <statistics:2_probability_distributions.binoinv>

Binomial inverse cumulative distribution function

== Syntax

- #raw("x = binoinv(y, n, p)");

== Input argument

/ y: real numeric array of probabilities.
/ n: nonnegative integer number of trials.
/ p: success probability in the range \[0,1\].

== Output argument

/ x: smallest integer values whose cumulative probabilities are at least y.

== Description

#strong[binoinv]; computes inverse lower-tail binomial probabilities.


== Example

``````matlab
y = [0.025 0.5 0.975];
x = binoinv(y, 10, 0.4);
``````


== See also

#nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
