#import "../nelson_help.typ": *

= nbinfit <statistics:2_probability_distributions.nbinfit>

Negative binomial parameter estimates

== Syntax

- #raw("phat = nbinfit(x)");
- #raw("[phat, pci] = nbinfit(x, alpha, censoring, freq, options)");

== Input argument

/ x: nonnegative integer finite real nonempty vector or matrix: observed failures.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.
/ censoring: array with values 0 or 1. Default is all zeros.
/ freq: nonnegative finite array of observation frequencies. Default is all ones.
/ options: structure created by statset. MaxIter and TolX are used.

== Output argument

/ phat: array: estimates of r and p.
/ pci: array: confidence intervals for r and p.

== Description

#strong[nbinfit]; estimates the negative binomial distribution parameters.


== Example

``````matlab
x = [0 1 2 4 6 9 12 15];
[phat, pci] = nbinfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.nbinlike>)[nbinlike];, #nlink(<statistics:2_probability_distributions.nbinpdf>)[nbinpdf];, #nlink(<statistics:2_probability_distributions.nbincdf>)[nbincdf];, #nlink(<statistics:2_probability_distributions.nbinrnd>)[nbinrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
