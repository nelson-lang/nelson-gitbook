#import "../nelson_help.typ": *

= geolike <statistics:2_probability_distributions.geolike>

Geometric negative log-likelihood

== Syntax

- #raw("nlogL = geolike(p, x)");
- #raw("[nlogL, avar] = geolike(p, x)");

== Input argument

/ p: scalar in the range \[0, 1\]: success probability.
/ x: nonnegative integer finite real nonempty array: failure counts before success.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: scalar: asymptotic variance estimate.

== Description

#strong[geolike]; returns the negative log-likelihood for geometric distribution data and the asymptotic variance estimate.


== Example

``````matlab
x = [0 1 2 3 5 8];
[nlogL, avar] = geolike(0.25, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.geofit>)[geofit];, #nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
