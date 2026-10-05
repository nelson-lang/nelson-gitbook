#import "../nelson_help.typ": *

= grp2idx <statistics:6_classification.grp2idx>

Create index vector from grouping variable.

== Syntax

- #raw("[g, gN] = grp2idx(s)");
- #raw("[g, gN, gL] = grp2idx(s)");

== Description

#strong[grp2idx]; converts a grouping variable to numeric group indices.

 #strong[gN]; is a cell array of group names. #strong[gL]; contains the group levels in a type matching the input when possible. Missing group values produce #strong[NaN]; indices.


== Example

``````matlab
s = {'red', 'blue', 'red', ''};
[g, gN, gL] = grp2idx(s)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats];, #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];, #nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
