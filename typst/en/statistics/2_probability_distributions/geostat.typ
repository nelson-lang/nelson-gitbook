#import "../nelson_help.typ": *

= geostat <statistics:2_probability_distributions.geostat>

Geometric mean and variance

== Syntax

- #raw("[m, v] = geostat(p)");

== Input argument

/ p: scalar or array in the range \[0, 1\]: probability of success.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[geostat]; returns the mean and variance of the geometric distribution.


== Example

``````matlab
[m, v] = geostat(0.25);
``````


== See also

#nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];, #nlink(<statistics:2_probability_distributions.geocdf>)[geocdf];, #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
