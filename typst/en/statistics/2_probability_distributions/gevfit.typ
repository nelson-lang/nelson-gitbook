#import "../nelson_help.typ": *

= gevfit <statistics:2_probability_distributions.gevfit>

Generalized extreme value parameter estimates

== Syntax

- #raw("phat = gevfit(x)");
- #raw("[phat, pci] = gevfit(x, alpha)");
- #raw("[phat, pci] = gevfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = gevfit(x, alpha, censoring, freq, options)");

== Input argument

/ x: real finite nonempty vector or matrix: sample data.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.
/ options: scalar structure: fitting options.

== Output argument

/ phat: array: estimates for shape, scale, and location parameters.
/ pci: array: confidence intervals for the estimates.

== Description

#strong[gevfit]; estimates the parameters of the generalized extreme value distribution.


== Example

``````matlab
x = [-1.2 -0.4 0.1 0.8 1.5 2.8 4.0];
[phat, pci] = gevfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.gevlike>)[gevlike];, #nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
