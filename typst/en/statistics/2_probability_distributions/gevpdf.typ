#import "../nelson_help.typ": *

= gevpdf <statistics:2_probability_distributions.gevpdf>

Generalized extreme value probability density function

== Syntax

- #raw("y = gevpdf(x, k, sigma, mu)");

== Input argument

/ x: real array: values.
/ k: real array: shape parameter.
/ sigma: positive real array: scale parameter.
/ mu: real array: location parameter.

== Output argument

/ y: array: density values.

== Description

#strong[gevpdf]; computes generalized extreme value density values element by element.


== Example

``````matlab
x = [-2 -1 0 1 2];
y = gevpdf(x, 0.2, 1, 0);
``````


== See also

#nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd];, #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
