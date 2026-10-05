#import "../nelson_help.typ": *

= betarnd <statistics:2_probability_distributions.betarnd>

Beta random numbers

== Syntax

- #raw("r = betarnd(a, b)");
- #raw("r = betarnd(a, b, sz)");
- #raw("r = betarnd(a, b, sz1, ..., szN)");

== Input argument

/ a: positive scalar or array: first shape parameter.
/ b: positive scalar or array: second shape parameter.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[betarnd]; generates beta distributed random values. Scalar parameters are expanded to match array inputs or the requested output size.


== Example

``````matlab
rng(0);
r = betarnd(2, 5, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];, #nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];, #nlink(<statistics:2_probability_distributions.betainv>)[betainv];, #nlink(<statistics:2_probability_distributions.betastat>)[betastat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
