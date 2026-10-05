#import "../nelson_help.typ": *

= gevstat <statistics:2_probability_distributions.gevstat>

Generalized extreme value mean and variance

== Syntax

- #raw("m = gevstat(k, sigma, mu)");
- #raw("[m, v] = gevstat(k, sigma, mu)");

== Input argument

/ k: real array: shape parameter.
/ sigma: positive real array: scale parameter.
/ mu: real array: location parameter.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[gevstat]; computes mean and variance for generalized extreme value distributions when they are finite.


== Example

``````matlab
[m, v] = gevstat([0 0.2], [1 1], [0 0]);
``````


== See also

#nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
