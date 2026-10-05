#import "../nelson_help.typ": *

= lognstat <statistics:2_probability_distributions.lognstat>

Lognormal mean and variance

== Syntax

- #raw("[m, v] = lognstat(mu, sigma)");

== Input argument

/ mu: real scalar or array: mean of logarithmic values.
/ sigma: nonnegative scalar or array: standard deviation of logarithmic values.

== Output argument

/ m: array: means.
/ v: array: variances.

== Description

#strong[lognstat]; returns the element-wise mean and variance of lognormal distributions.


== Example

``````matlab
[m, v] = lognstat(0, 1);
``````


== See also

#nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.lognrnd>)[lognrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
