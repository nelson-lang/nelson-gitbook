#import "../nelson_help.typ": *

= gamrnd <statistics:2_probability_distributions.gamrnd>

Gamma random numbers

== Syntax

- #raw("r = gamrnd(a, b)");
- #raw("r = gamrnd(a, b, sz)");
- #raw("r = gamrnd(a, b, sz1, ..., szN)");

== Input argument

/ a: positive scalar or array: shape parameter.
/ b: positive scalar or array: scale parameter.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[gamrnd]; generates gamma distributed random values. Scalar parameters are expanded to match array inputs or the requested output size.


== Example

``````matlab
rng(0);
r = gamrnd(2, 3, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.gampdf>)[gampdf];, #nlink(<statistics:2_probability_distributions.gamcdf>)[gamcdf];, #nlink(<statistics:2_probability_distributions.gaminv>)[gaminv];, #nlink(<statistics:2_probability_distributions.gamstat>)[gamstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
