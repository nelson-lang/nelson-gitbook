#import "../nelson_help.typ": *

= normstat <statistics:2_probability_distributions.normstat>

Normal mean and variance

== Syntax

- #raw("[m, v] = normstat(mu, sigma)");

== Input argument

/ mu: scalar or array: mean parameter.
/ sigma: nonnegative scalar or array: standard deviation.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[normstat]; returns the mean and variance of the normal distribution.


== Example

``````matlab
[m, v] = normstat([0 1 2], [1 2 3]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
