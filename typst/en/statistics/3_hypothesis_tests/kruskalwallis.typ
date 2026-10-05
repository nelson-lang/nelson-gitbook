#import "../nelson_help.typ": *

= kruskalwallis <statistics:3_hypothesis_tests.kruskalwallis>

Kruskal-Wallis one-way analysis of variance by ranks.

== Syntax

- #raw("p = kruskalwallis(X)");
- #raw("p = kruskalwallis(X, group)");
- #raw("p = kruskalwallis(X, group, displayopt)");
- #raw("[p, tbl, stats] = kruskalwallis(...)");

== Description

#strong[kruskalwallis]; performs a nonparametric one-way analysis of variance by ranks. When #strong[X]; is a matrix and #strong[group]; is empty, columns are treated as groups. When #strong[X]; is a vector, #strong[group]; supplies one group label per observation.

 #strong[displayopt]; can be #strong['on']; or #strong['off'];. #strong[NaN]; observations are omitted.


== Example

``````matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = kruskalwallis(X, [], 'off')
``````


== See also

#nlink(<statistics:4_anova.anova1>)[anova1];, #nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
