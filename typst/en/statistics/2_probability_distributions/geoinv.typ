#import "../nelson_help.typ": *

= geoinv <statistics:2_probability_distributions.geoinv>

Geometric inverse cumulative distribution function

== Syntax

- #raw("x = geoinv(y, p)");

== Input argument

/ y: real scalar or array: probability values.
/ p: scalar or array in the range \[0, 1\]: probability of success.

== Output argument

/ x: array: inverse probability values.

== Description

#strong[geoinv]; evaluates geometric inverse cumulative probabilities element by element.


== Example

``````matlab
y = [0 0.25 0.9];
x = geoinv(y, 0.25);
``````


== See also

#nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];, #nlink(<statistics:2_probability_distributions.geocdf>)[geocdf];, #nlink(<statistics:2_probability_distributions.geornd>)[geornd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
