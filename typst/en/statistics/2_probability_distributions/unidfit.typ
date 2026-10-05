#import "../nelson_help.typ": *

= unidfit <statistics:2_probability_distributions.unidfit>

Discrete uniform maximum estimate

== Syntax

- #raw("nHat = unidfit(x)");
- #raw("[nHat, nCI] = unidfit(x, alpha)");

== Input argument

/ x: positive integer finite real nonempty vector or matrix: sample data.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.

== Output argument

/ nHat: array: estimates of the maximum integer value.
/ nCI: array: confidence intervals for the estimates.

== Description

#strong[unidfit]; estimates the maximum value of a discrete uniform distribution on integers from 1 to n.


== Example

``````matlab
x = [1 2 4 5 5];
[nHat, nCI] = unidfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.unidlike>)[unidlike];, #nlink(<statistics:2_probability_distributions.unidpdf>)[unidpdf];, #nlink(<statistics:2_probability_distributions.unidcdf>)[unidcdf];, #nlink(<statistics:2_probability_distributions.unidrnd>)[unidrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
