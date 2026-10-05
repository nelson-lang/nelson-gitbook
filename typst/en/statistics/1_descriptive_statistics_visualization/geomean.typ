#import "../nelson_help.typ": *

= geomean <statistics:1_descriptive_statistics_visualization.geomean>

Geometric mean of a data set.

== Syntax

- #raw("m = geomean(X)");
- #raw("m = geomean(X, dim)");
- #raw("m = geomean(X, vecdim)");
- #raw("m = geomean(X, 'all')");
- #raw("m = geomean(..., nanflag)");

== Description

#strong[geomean]; computes the geometric mean of numeric data.

 By default, #strong[NaN]; values are included. Use #strong[omitnan]; to ignore them.


== Example

``````matlab
X = reshape(1:30, [3 5 2]);
m = geomean(X, [1 2])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.harmmean>)[harmmean];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
