#import "../nelson_help.typ": *

= gamlike <statistics:2_probability_distributions.gamlike>

Gamma negative log-likelihood

== Syntax

- #raw("nlogL = gamlike(params, x)");
- #raw("[nlogL, avar] = gamlike(params, x, censoring, freq)");

== Input argument

/ params: two-element vector: shape and scale parameters.
/ x: positive finite real nonempty array: sample data.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: 2-by-2 array: approximate covariance matrix.

== Description

#strong[gamlike]; evaluates the negative log-likelihood of the gamma distribution.


== Example

``````matlab
x = [0.5 1 2 3 5 8];
phat = gamfit(x);
nlogL = gamlike(phat, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.gamfit>)[gamfit];, #nlink(<statistics:2_probability_distributions.gampdf>)[gampdf];, #nlink(<statistics:2_probability_distributions.gamcdf>)[gamcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
