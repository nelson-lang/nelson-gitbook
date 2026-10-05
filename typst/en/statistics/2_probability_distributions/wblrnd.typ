#import "../nelson_help.typ": *

= wblrnd <statistics:2_probability_distributions.wblrnd>

Weibull random numbers

== Syntax

- #raw("r = wblrnd(a, b)");
- #raw("r = wblrnd(a, b, sz)");
- #raw("r = wblrnd(a, b, sz1, ..., szN)");

== Input argument

/ a: positive scalar or array: scale parameter.
/ b: positive scalar or array: shape parameter.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[wblrnd]; generates Weibull distributed random values.


== Example

``````matlab
rng(0);
r = wblrnd(2, 3, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];, #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
