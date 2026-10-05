#import "../nelson_help.typ": *

= unifinv <statistics:2_probability_distributions.unifinv>

Continuous uniform inverse cumulative distribution function

== Syntax

- #raw("x = unifinv(p)");
- #raw("x = unifinv(p, a, b)");

== Input argument

/ p: real numeric array of probabilities.
/ a: lower endpoint, default 0.
/ b: upper endpoint, default 1.

== Output argument

/ x: inverse lower-tail continuous uniform values.

== Description

#strong[unifinv]; computes inverse lower-tail continuous uniform probabilities.


== Example

``````matlab
p = [0.25 0.5 0.75];
x = unifinv(p, -1, 1);
``````


== See also

#nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
