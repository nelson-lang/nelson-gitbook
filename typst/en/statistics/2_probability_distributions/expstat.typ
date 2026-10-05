#import "../nelson_help.typ": *

= expstat <statistics:2_probability_distributions.expstat>

Exponential mean and variance

== Syntax

- #raw("[m, v] = expstat(mu)");

== Input argument

/ mu: positive scalar or array: mean parameter.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[expstat]; returns the mean and variance of the exponential distribution.


== Example

``````matlab
[m, v] = expstat(3);
``````


== See also

#nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];, #nlink(<statistics:2_probability_distributions.expinv>)[expinv];, #nlink(<statistics:2_probability_distributions.exprnd>)[exprnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
