#import "../nelson_help.typ": *

= zscore <statistics:1_descriptive_statistics_visualization.zscore>

Standardized z-scores.

== Syntax

- #raw("Z = zscore(X)");
- #raw("Z = zscore(X, flag)");
- #raw("Z = zscore(X, flag, dim)");
- #raw("Z = zscore(X, flag, vecdim)");
- #raw("Z = zscore(X, flag, 'all')");
- #raw("[Z, mu, sigma] = zscore(...)");

== Description

#strong[zscore]; centers and scales numeric data by subtracting the mean and dividing by the standard deviation.

 #strong[flag]; is 0 for sample standard deviation and 1 for population standard deviation. Samples containing #strong[NaN]; return #strong[NaN]; z-scores. Constant samples return zero z-scores.


== Example

``````matlab
X = [1 2 3; 4 5 6];
[Z, mu, sigma] = zscore(X, 0, 1)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];, #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
