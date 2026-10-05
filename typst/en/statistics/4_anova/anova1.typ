#import "../nelson_help.typ": *

= anova1 <statistics:4_anova.anova1>

One-way analysis of variance.

== Syntax

- #raw("p = anova1(X)");
- #raw("p = anova1(X, group)");
- #raw("p = anova1(X, group, displayopt)");
- #raw("[p, tbl, stats] = anova1(...)");

== Description

#strong[anova1]; performs a one-way analysis of variance. When #strong[X]; is a matrix and #strong[group]; is empty, columns are treated as groups. When #strong[X]; is a vector, #strong[group]; supplies one group label per observation.

 #strong[displayopt]; can be #strong['on']; or #strong['off'];. #strong[NaN]; observations are omitted.


== Example

``````matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = anova1(X, [], 'off')
``````


== See also

#nlink(<statistics:2_probability_distributions.fcdf>)[fcdf];, #nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats];, #nlink(<statistics:3_hypothesis_tests.vartest>)[vartest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
