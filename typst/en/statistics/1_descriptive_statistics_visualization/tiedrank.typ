#import "../nelson_help.typ": *

= tiedrank <statistics:1_descriptive_statistics_visualization.tiedrank>

Ranks with average values for ties.

== Syntax

- #raw("R = tiedrank(X)");
- #raw("[R, tieadj] = tiedrank(X)");
- #raw("[R, tieadj] = tiedrank(X, kendall)");
- #raw("[R, tieadj] = tiedrank(X, kendall, bidirectional)");

== Description

#strong[tiedrank]; computes ranks along the first dimension and assigns average ranks to tied values. #strong[NaN]; values are ignored and keep #strong[NaN]; ranks.

 When #strong[kendall]; is true, #strong[tieadj]; contains the three tie-adjustment terms used by Kendall rank correlation. When #strong[bidirectional]; is true, ranks are assigned from both ends of the sorted data.


== Example

``````matlab
X = [-2 1 3 1 4];
[R, tieadj] = tiedrank(X)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:3_hypothesis_tests.friedman>)[friedman];, #nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
