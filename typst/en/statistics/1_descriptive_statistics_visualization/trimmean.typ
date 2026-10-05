#import "../nelson_help.typ": *

= trimmean <statistics:1_descriptive_statistics_visualization.trimmean>

Mean after trimming extreme values.

== Syntax

- #raw("m = trimmean(X, percent)");
- #raw("m = trimmean(X, percent, flag)");
- #raw("m = trimmean(..., dim)");
- #raw("m = trimmean(..., vecdim)");
- #raw("m = trimmean(..., 'all')");

== Description

#strong[trimmean]; computes the mean after removing a percentage of the smallest and largest values. #strong[NaN]; values are omitted.

 #strong[flag]; controls noninteger trimming counts and can be #strong[round];, #strong[floor];, or #strong[weighted];.


== Example

``````matlab
X = reshape(1:40, [5 4 2]);
X([3 37]) = -100;
m = trimmean(X, 10, [1 2])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.geomean>)[geomean];, #nlink(<statistics:1_descriptive_statistics_visualization.harmmean>)[harmmean];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
