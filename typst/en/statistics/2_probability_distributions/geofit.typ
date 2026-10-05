#import "../nelson_help.typ": *

= geofit <statistics:2_probability_distributions.geofit>

Geometric probability estimate

== Syntax

- #raw("pHat = geofit(x)");
- #raw("[pHat, pCI] = geofit(x, alpha)");

== Input argument

/ x: nonnegative integer finite real nonempty vector or matrix: failure counts before success.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.

== Output argument

/ pHat: array: success probability estimates.
/ pCI: array: confidence intervals for the estimates.

== Description

#strong[geofit]; estimates the success probability of the geometric distribution.


== Example

``````matlab
x = [0 1 2 3 5 8];
[pHat, pCI] = geofit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.geolike>)[geolike];, #nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
