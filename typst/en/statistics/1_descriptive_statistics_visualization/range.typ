#import "../nelson_help.typ": *

= range <statistics:1_descriptive_statistics_visualization.range>

Range of values.

== Syntax

- #raw("Y = range(X)");
- #raw("Y = range(X, dim)");

== Input argument

/ X: numeric or logical array.
/ dim: dimension along which to operate.

== Output argument

/ Y: difference between the maximum and minimum values.

== Description

#strong[range]; returns the difference between the maximum and minimum values, max(X) - min(X). For a matrix, range operates on each column; range(X, dim) operates along dimension dim. NaN values are ignored.


== Example

``````matlab
range([3 1 8 4])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
