#import "../nelson_help.typ": *

= evrnd <statistics:2_probability_distributions.evrnd>

Extreme value random numbers

== Syntax

- #raw("r = evrnd(mu, sigma)");
- #raw("r = evrnd(mu, sigma, sz)");
- #raw("r = evrnd(mu, sigma, sz1, ..., szN)");

== Input argument

/ mu: real scalar or array: location parameter.
/ sigma: positive scalar or array: scale parameter.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[evrnd]; generates extreme value distributed random values.


== Example

``````matlab
rng(0);
r = evrnd(0, 1, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
