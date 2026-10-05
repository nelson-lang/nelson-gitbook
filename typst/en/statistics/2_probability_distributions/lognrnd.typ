#import "../nelson_help.typ": *

= lognrnd <statistics:2_probability_distributions.lognrnd>

Lognormal random numbers

== Syntax

- #raw("r = lognrnd(mu, sigma)");
- #raw("r = lognrnd(mu, sigma, sz)");
- #raw("r = lognrnd(mu, sigma, sz1, ..., szN)");

== Input argument

/ mu: real scalar or array: mean of logarithmic values.
/ sigma: nonnegative scalar or array: standard deviation of logarithmic values.
/ sz: size vector or size scalars for the output.

== Output argument

/ r: array: random values.

== Description

#strong[lognrnd]; generates lognormal random numbers using Nelson's global random generator.

 Scalar parameters are expanded to the requested output size. Negative standard deviations produce NaN values.


== Example

``````matlab
rng(0);
r = lognrnd(0, 1, [2 3]);
``````


== See also

#nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.lognstat>)[lognstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
