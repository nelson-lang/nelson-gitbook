#import "../nelson_help.typ": *

= gamfit <statistics:2_probability_distributions.gamfit>

Gamma parameter estimates

== Syntax

- #raw("phat = gamfit(x)");
- #raw("[phat, pci] = gamfit(x, alpha)");
- #raw("[phat, pci] = gamfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = gamfit(x, alpha, censoring, freq, options)");

== Input argument

/ x: positive finite real nonempty vector or matrix: sample data.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.
/ options: scalar structure: fitting options. MaxIter and TolX are used when supplied.

== Output argument

/ phat: array: estimates for shape and scale parameters.
/ pci: array: confidence intervals for the estimates.

== Description

#strong[gamfit]; estimates the parameters of the gamma distribution.


== Example

``````matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = gamfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.gamlike>)[gamlike];, #nlink(<statistics:2_probability_distributions.gampdf>)[gampdf];, #nlink(<statistics:2_probability_distributions.gamcdf>)[gamcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
