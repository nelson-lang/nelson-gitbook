#import "../nelson_help.typ": *

= tabulate <statistics:1_descriptive_statistics_visualization.tabulate>

Frequency table.

== Syntax

- #raw("tabulate(x)");
- #raw("tbl = tabulate(x)");

== Description

#strong[tabulate]; returns counts and percentages for the unique values of a vector.

 Numeric input returns a numeric matrix. Text, logical, and categorical input return a cell array. Positive integer numeric input includes rows with zero counts from 1 to the maximum input value.


== Example

``````matlab
x = [1 3 3 4];
tbl = tabulate(x)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];, #nlink(<data_analysis:groupcounts>)[groupcounts];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
