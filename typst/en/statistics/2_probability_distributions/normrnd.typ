#import "../nelson_help.typ": *

= normrnd <statistics:2_probability_distributions.normrnd>

Normal random numbers

== Syntax

- #raw("r = normrnd(mu, sigma)");
- #raw("r = normrnd(mu, sigma, sz)");
- #raw("r = normrnd(mu, sigma, sz1, ..., szN)");

== Input argument

/ mu: real scalar or array: mean.
/ sigma: real scalar or array: standard deviation.
/ sz: size vector or size scalars for the output.

== Output argument

/ r: array: random values.

== Description

#strong[normrnd]; generates random numbers from normal distributions using Nelson's global random generator.

 Scalar parameters are expanded to the requested output size. Negative standard deviations produce NaN values.


== Example

``````matlab
rng(0);
r = normrnd(0, 1, 3, 4);
r2 = normrnd([0 10], [1 2]);
``````


== See also

#nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
