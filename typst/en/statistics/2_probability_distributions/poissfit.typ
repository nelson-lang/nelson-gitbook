#import "../nelson_help.typ": *

= poissfit <statistics:2_probability_distributions.poissfit>

Poisson rate estimate

== Syntax

- #raw("lambdaHat = poissfit(x)");
- #raw("[lambdaHat, lambdaCI] = poissfit(x, alpha)");

== Input argument

/ x: nonnegative integer finite real nonempty vector or matrix: sample counts.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.

== Output argument

/ lambdaHat: array: Poisson rate estimates.
/ lambdaCI: array: confidence intervals for the estimates.

== Description

#strong[poissfit]; estimates the rate parameter of the Poisson distribution.


== Example

``````matlab
x = [0 1 2 3 5 8];
[lambdaHat, lambdaCI] = poissfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.poisslike>)[poisslike];, #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
