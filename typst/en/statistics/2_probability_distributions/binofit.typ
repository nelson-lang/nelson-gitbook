#import "../nelson_help.typ": *

= binofit <statistics:2_probability_distributions.binofit>

Binomial probability estimate

== Syntax

- #raw("pHat = binofit(x, n)");
- #raw("[pHat, pCI] = binofit(x, n, alpha)");

== Input argument

/ x: nonnegative integer finite real nonempty array: observed successes.
/ n: nonnegative integer finite real nonempty array or scalar: trial counts. Each value must be greater than or equal to the corresponding value in x.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.

== Output argument

/ pHat: array: estimated binomial probabilities.
/ pCI: array: confidence intervals for the estimates. The first column contains lower bounds and the second column contains upper bounds.

== Description

#strong[binofit]; estimates binomial probabilities from observed successes and trial counts.


== Example

``````matlab
x = [0 2 5 8 10];
n = 10;
[pHat, pCI] = binofit(x, n);
``````


== See also

#nlink(<statistics:2_probability_distributions.binolike>)[binolike];, #nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];, #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binornd>)[binornd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
