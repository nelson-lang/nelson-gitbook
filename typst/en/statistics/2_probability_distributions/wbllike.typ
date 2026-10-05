#import "../nelson_help.typ": *

= wbllike <statistics:2_probability_distributions.wbllike>

Weibull negative log-likelihood

== Syntax

- #raw("nlogL = wbllike(params, x)");
- #raw("[nlogL, avar] = wbllike(params, x, censoring, freq)");

== Input argument

/ params: two-element vector: scale and shape parameters.
/ x: positive finite real nonempty array: sample data.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: 2-by-2 array: approximate covariance matrix.

== Description

#strong[wbllike]; evaluates the negative log-likelihood of the Weibull distribution.


== Example

``````matlab
x = [0.5 1 2 3 5 8];
phat = wblfit(x);
nlogL = wbllike(phat, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.wblfit>)[wblfit];, #nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
