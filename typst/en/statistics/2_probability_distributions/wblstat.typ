#import "../nelson_help.typ": *

= wblstat <statistics:2_probability_distributions.wblstat>

Weibull mean and variance

== Syntax

- #raw("[m, v] = wblstat(a, b)");

== Input argument

/ a: positive scalar or array: scale parameter.
/ b: positive scalar or array: shape parameter.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[wblstat]; returns the mean and variance of the Weibull distribution.


== Example

``````matlab
[m, v] = wblstat(2, 3);
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
