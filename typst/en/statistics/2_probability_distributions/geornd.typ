#import "../nelson_help.typ": *

= geornd <statistics:2_probability_distributions.geornd>

Geometric random numbers

== Syntax

- #raw("r = geornd(p)");
- #raw("r = geornd(p, sz)");
- #raw("r = geornd(p, sz1, ..., szN)");

== Input argument

/ p: scalar or array in the range \[0, 1\]: probability of success.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[geornd]; generates geometric distributed random values.


== Example

``````matlab
rng(0);
r = geornd(0.25, 2, 3);
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
