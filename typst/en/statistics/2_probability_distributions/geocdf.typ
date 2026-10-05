#import "../nelson_help.typ": *

= geocdf <statistics:2_probability_distributions.geocdf>

Geometric cumulative distribution function

== Syntax

- #raw("y = geocdf(x, p)");
- #raw("y = geocdf(x, p, 'upper')");

== Input argument

/ x: real scalar or array: number of failures before the first success.
/ p: scalar or array in the range \[0, 1\]: probability of success.
/ 'upper': option to return the upper tail probability.

== Output argument

/ y: array: probability values.

== Description

#strong[geocdf]; evaluates geometric cumulative probabilities element by element.


== Example

``````matlab
x = [0 1 2 5];
y = geocdf(x, 0.25);
``````


== See also

#nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];, #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv];, #nlink(<statistics:2_probability_distributions.geornd>)[geornd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
