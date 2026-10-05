#import "../nelson_help.typ": *

= gevlike <statistics:2_probability_distributions.gevlike>

Generalized extreme value negative log-likelihood

== Syntax

- #raw("nlogL = gevlike(params, x)");
- #raw("[nlogL, avar] = gevlike(params, x, censoring, freq)");

== Input argument

/ params: three-element vector: shape, scale, and location parameters.
/ x: real finite nonempty array: sample data.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: 3-by-3 array: approximate covariance matrix.

== Description

#strong[gevlike]; evaluates the negative log-likelihood of the generalized extreme value distribution.


== Example

``````matlab
x = [-1.2 -0.4 0.1 0.8 1.5 2.8 4.0];
phat = gevfit(x);
nlogL = gevlike(phat, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.gevfit>)[gevfit];, #nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
