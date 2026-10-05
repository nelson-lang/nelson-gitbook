#import "../nelson_help.typ": *

= expfit <statistics:2_probability_distributions.expfit>

Exponential mean estimate

== Syntax

- #raw("phat = expfit(x)");
- #raw("[phat, pci] = expfit(x, alpha)");
- #raw("[phat, pci] = expfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = expfit(x, alpha, censoring, freq, options)");

== Input argument

/ x: nonnegative finite real nonempty vector or matrix: sample data.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.
/ options: structure created by statset. MaxIter and TolX are validated for compatibility.

== Output argument

/ phat: array: mean parameter estimates.
/ pci: array: confidence intervals for the estimates.

== Description

#strong[expfit]; estimates the mean parameter of the exponential distribution.


== Example

``````matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = expfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.explike>)[explike];, #nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
