#import "../nelson_help.typ": *

= gevinv <statistics:2_probability_distributions.gevinv>

Generalized extreme value inverse cumulative distribution function

== Syntax

- #raw("x = gevinv(p, k, sigma, mu)");

== Input argument

/ p: real array in the range \[0, 1\]: probabilities.
/ k: real array: shape parameter.
/ sigma: positive real array: scale parameter.
/ mu: real array: location parameter.

== Output argument

/ x: array: quantiles.

== Description

#strong[gevinv]; computes generalized extreme value quantiles element by element.


== Example

``````matlab
p = [0.1 0.5 0.9];
x = gevinv(p, 0.2, 1, 0);
``````


== See also

#nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];, #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd];, #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
