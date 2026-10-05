#import "../nelson_help.typ": *

= mad <statistics:1_descriptive_statistics_visualization.mad>

Mean or median absolute deviation.

== Syntax

- #raw("y = mad(X)");
- #raw("y = mad(X, flag)");
- #raw("y = mad(X, flag, dim)");
- #raw("y = mad(X, flag, vecdim)");
- #raw("y = mad(X, flag, 'all')");

== Description

#strong[mad]; computes mean absolute deviation when #strong[flag]; is 0, and median absolute deviation when #strong[flag]; is 1. #strong[NaN]; values are omitted.

 The operating dimensions can be a scalar dimension, a vector of dimensions, or #strong[all];.


== Example

``````matlab
X = [1 2 3; 4 NaN 6; 7 8 9];
y = mad(X)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
