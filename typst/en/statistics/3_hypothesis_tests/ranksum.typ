#import "../nelson_help.typ": *

= ranksum <statistics:3_hypothesis_tests.ranksum>

Wilcoxon rank sum test.

== Syntax

- #raw("p = ranksum(x, y)");
- #raw("p = ranksum(x, y, Name, Value)");
- #raw("[p, h, stats] = ranksum(...)");

== Description

#strong[ranksum]; performs a two-sample rank sum test. #strong[NaN]; observations are omitted from each input vector.

 Name-value arguments include #strong[Alpha];, #strong[Tail];, and #strong[Method];. Supported tails are both, right, and left. Supported methods are auto, exact, and approximate.


== Example

``````matlab
x = [1 3 5];
y = [2 4 6];
[p, h, stats] = ranksum(x, y)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis];, #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
