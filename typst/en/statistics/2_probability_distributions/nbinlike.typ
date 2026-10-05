#import "../nelson_help.typ": *

= nbinlike <statistics:2_probability_distributions.nbinlike>

Negative binomial negative log-likelihood

== Syntax

- #raw("nlogL = nbinlike(params, x)");
- #raw("[nlogL, avar] = nbinlike(params, x, censoring, freq)");

== Input argument

/ params: two-element vector containing r and p.
/ x: nonnegative integer finite real nonempty array: observed failures.
/ censoring: array with values 0 or 1. Default is all zeros.
/ freq: nonnegative finite array of observation frequencies. Default is all ones.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: matrix: asymptotic covariance estimate.

== Description

#strong[nbinlike]; returns the negative log-likelihood for negative binomial distribution data and the asymptotic covariance estimate.


== Example

``````matlab
x = [0 1 2 4 6 9 12 15];
[nlogL, avar] = nbinlike([4 0.45], x);
``````


== See also

#nlink(<statistics:2_probability_distributions.nbinfit>)[nbinfit];, #nlink(<statistics:2_probability_distributions.nbinpdf>)[nbinpdf];, #nlink(<statistics:2_probability_distributions.nbincdf>)[nbincdf];, #nlink(<statistics:2_probability_distributions.nbinrnd>)[nbinrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
