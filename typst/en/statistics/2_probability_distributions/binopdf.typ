#import "../nelson_help.typ": *

= binopdf <statistics:2_probability_distributions.binopdf>

Binomial probability density function

== Syntax

- #raw("y = binopdf(x, n, p)");

== Input argument

/ x: real numeric array.
/ n: nonnegative integer number of trials.
/ p: success probability in the range \[0,1\].

== Output argument

/ y: probability mass values.

== Description

#strong[binopdf]; computes binomial probability mass values. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = 0:10;
y = binopdf(x, 10, 0.4);
``````


== See also

#nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
