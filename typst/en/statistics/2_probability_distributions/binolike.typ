#import "../nelson_help.typ": *

= binolike <statistics:2_probability_distributions.binolike>

Binomial negative log-likelihood

== Syntax

- #raw("nlogL = binolike(p, x, n)");
- #raw("[nlogL, avar] = binolike(p, x, n)");

== Input argument

/ p: scalar: binomial probability parameter.
/ x: nonnegative integer finite real nonempty array: observed successes.
/ n: nonnegative integer finite real nonempty array or scalar: trial counts. Each value must be greater than or equal to the corresponding value in x.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: scalar: asymptotic variance estimate.

== Description

#strong[binolike]; returns the negative log-likelihood for binomial distribution data and the asymptotic variance estimate.


== Example

``````matlab
x = [0 2 5 8 10];
n = 10;
[nlogL, avar] = binolike(0.4, x, n);
``````


== See also

#nlink(<statistics:2_probability_distributions.binofit>)[binofit];, #nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];, #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binornd>)[binornd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
