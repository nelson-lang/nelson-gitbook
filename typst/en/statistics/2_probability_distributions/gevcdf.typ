#import "../nelson_help.typ": *

= gevcdf <statistics:2_probability_distributions.gevcdf>

Generalized extreme value cumulative distribution function

== Syntax

- #raw("p = gevcdf(x, k, sigma, mu)");
- #raw("p = gevcdf(x, k, sigma, mu, 'upper')");

== Input argument

/ x: real array: values.
/ k: real array: shape parameter.
/ sigma: positive real array: scale parameter.
/ mu: real array: location parameter.

== Output argument

/ p: array: cumulative probabilities.

== Description

#strong[gevcdf]; computes lower-tail probabilities by default and upper-tail probabilities with #strong['upper'];.


== Example

``````matlab
x = [-2 -1 0 1 2];
p = gevcdf(x, 0.2, 1, 0);
``````


== See also

#nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd];, #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
