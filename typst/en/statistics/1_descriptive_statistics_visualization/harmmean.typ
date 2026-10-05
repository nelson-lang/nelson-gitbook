#import "../nelson_help.typ": *

= harmmean <statistics:1_descriptive_statistics_visualization.harmmean>

Harmonic mean of a data set.

== Syntax

- #raw("m = harmmean(X)");
- #raw("m = harmmean(X, dim)");
- #raw("m = harmmean(X, vecdim)");
- #raw("m = harmmean(X, 'all')");
- #raw("m = harmmean(..., nanflag)");

== Description

#strong[harmmean]; computes the harmonic mean of numeric data.

 By default, #strong[NaN]; values are included. Use #strong[omitnan]; to ignore them.


== Example

``````matlab
X = reshape(1:30, [3 5 2]);
m = harmmean(X, [1 2])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.geomean>)[geomean];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
