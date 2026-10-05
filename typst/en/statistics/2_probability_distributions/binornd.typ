#import "../nelson_help.typ": *

= binornd <statistics:2_probability_distributions.binornd>

Binomial random numbers

== Syntax

- #raw("r = binornd(n, p)");
- #raw("r = binornd(n, p, sz)");
- #raw("r = binornd(n, p, sz1, ..., szN)");

== Input argument

/ n: nonnegative integer scalar or array: number of trials.
/ p: scalar or array in the range \[0, 1\]: event probability.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[binornd]; generates binomial distributed random values. Scalar parameters are expanded to match array inputs or the requested output size.


== Example

``````matlab
rng(0);
r = binornd(10, 0.3, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];, #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv];, #nlink(<statistics:2_probability_distributions.binostat>)[binostat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
