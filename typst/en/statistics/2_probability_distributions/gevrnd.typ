#import "../nelson_help.typ": *

= gevrnd <statistics:2_probability_distributions.gevrnd>

Generalized extreme value random numbers

== Syntax

- #raw("r = gevrnd(k, sigma, mu)");
- #raw("r = gevrnd(k, sigma, mu, sz)");
- #raw("r = gevrnd(k, sigma, mu, sz1, ..., szN)");

== Input argument

/ k: real array: shape parameter.
/ sigma: positive real array: scale parameter.
/ mu: real array: location parameter.

== Output argument

/ r: array: random values.

== Description

#strong[gevrnd]; generates generalized extreme value random values.


== Example

``````matlab
r = gevrnd(0.2, 1, 0, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
