#import "../nelson_help.typ": *

= geopdf <statistics:2_probability_distributions.geopdf>

Geometric probability density function

== Syntax

- #raw("y = geopdf(x, p)");

== Input argument

/ x: real scalar or array: number of failures before the first success.
/ p: scalar or array in the range \[0, 1\]: probability of success.

== Output argument

/ y: array: probability values.

== Description

#strong[geopdf]; evaluates geometric probability values element by element.


== Example

``````matlab
x = [0 1 2 5];
y = geopdf(x, 0.25);
``````


== See also

#nlink(<statistics:2_probability_distributions.geocdf>)[geocdf];, #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv];, #nlink(<statistics:2_probability_distributions.geornd>)[geornd];, #nlink(<statistics:2_probability_distributions.geostat>)[geostat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
