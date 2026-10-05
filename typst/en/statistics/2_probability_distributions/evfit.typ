#import "../nelson_help.typ": *

= evfit <statistics:2_probability_distributions.evfit>

Extreme value parameter estimates

== Syntax

- #raw("phat = evfit(x)");
- #raw("[phat, pci] = evfit(x, alpha)");
- #raw("[phat, pci] = evfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = evfit(x, alpha, censoring, freq, options)");

== Input argument

/ x: real nonempty vector or matrix: sample data.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.
/ options: scalar structure: fitting options accepted for compatibility.

== Output argument

/ phat: array: estimates for location and scale parameters.
/ pci: array: confidence intervals for the estimates.

== Description

#strong[evfit]; estimates the parameters of the extreme value distribution.


== Example

``````matlab
x = [-2 -1 0 1 2 3];
[phat, pci] = evfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.evlike>)[evlike];, #nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
