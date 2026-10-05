#import "../nelson_help.typ": *

= exprnd <statistics:2_probability_distributions.exprnd>

Exponential random numbers

== Syntax

- #raw("r = exprnd(mu)");
- #raw("r = exprnd(mu, sz)");
- #raw("r = exprnd(mu, sz1, ..., szN)");

== Input argument

/ mu: positive scalar or array: mean parameter.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[exprnd]; generates exponential distributed random values.


== Example

``````matlab
rng(0);
r = exprnd(2, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];, #nlink(<statistics:2_probability_distributions.expinv>)[expinv];, #nlink(<statistics:2_probability_distributions.expstat>)[expstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
