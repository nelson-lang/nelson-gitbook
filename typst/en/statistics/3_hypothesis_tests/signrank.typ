#import "../nelson_help.typ": *

= signrank <statistics:3_hypothesis_tests.signrank>

Wilcoxon signed rank test.

== Syntax

- #raw("p = signrank(x)");
- #raw("p = signrank(x, y)");
- #raw("p = signrank(x, y, Name, Value)");
- #raw("[p, h, stats] = signrank(...)");

== Description

#strong[signrank]; performs a paired Wilcoxon signed rank test. If #strong[y]; is omitted, values in #strong[x]; are tested against zero. If #strong[y]; is a scalar, values in #strong[x]; are tested against that scalar.

 Name-value arguments include #strong[Alpha];, #strong[Tail];, and #strong[Method];. Zero and #strong[NaN]; differences are omitted.


== Example

``````matlab
x = [1 3 5 -2];
[p, h, stats] = signrank(x)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:3_hypothesis_tests.ttest>)[ttest];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
