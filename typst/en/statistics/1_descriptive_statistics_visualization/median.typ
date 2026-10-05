#import "../nelson_help.typ": *

= median <statistics:1_descriptive_statistics_visualization.median>

Median value of array elements.

== Syntax

- #raw("R = median(M)");
- #raw("R = median(M, d)");
- #raw("R = median(M, 'all')");
- #raw("R = median(..., 'omitnan')");

== Description

#strong[median]; returns the middle value of sorted data along the selected dimension.


== Example

``````matlab
R = median([4 1 2 3])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<data_analysis:sort>)[sort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
