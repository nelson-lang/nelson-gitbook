#import "../nelson_help.typ": *

= grpstats <statistics:7_clustering_anomaly_detection.grpstats>

Summary statistics organized by group.

== Syntax

- #raw("tblstats = grpstats(tbl, groupvars)");
- #raw("tblstats = grpstats(tbl, groupvars, whichstats)");
- #raw("tblstats = grpstats(tbl, groupvars, whichstats, 'DataVars', datavars)");
- #raw("stats = grpstats(X, group)");
- #raw("[stats1, ..., statsN] = grpstats(X, group, whichstats)");
- #raw("[...] = grpstats(..., 'Alpha', alpha)");

== Description

#strong[grpstats]; computes summary statistics for each observed group.

 Supported statistic names are mean, sem, std, var, min, max, range, median, mode, numel, gname, meanci, and predci. Function handles are also accepted for array input and table data variables.


== Example

``````matlab
X = [1 10; 2 20; 3 30; 4 40];
g = [1 1 2 2]';
[m, s] = grpstats(X, g, {'mean', 'std'})
``````


== See also

#nlink(<data_analysis:groupsummary>)[groupsummary];, #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
