#import "../nelson_help.typ": *

= signtest <statistics:3_hypothesis_tests.signtest>

Sign test.

== Syntax

- #raw("p = signtest(x)");
- #raw("p = signtest(x, y)");
- #raw("p = signtest(x, m)");
- #raw("p = signtest(x, y, Name, Value)");
- #raw("[p, h, stats] = signtest(...)");

== Description

#strong[signtest]; performs a sign test for a median or paired difference. If #strong[y]; is omitted, values of #strong[x]; are tested against zero. If #strong[y]; is a scalar, values of #strong[x]; are tested against that scalar.

 Name-value arguments include #strong[Alpha];, #strong[Method];, and #strong[Tail];. Zero differences and #strong[NaN]; values are omitted.


== Example

``````matlab
x = [1 2 -3 4 -5];
[p, h, stats] = signtest(x)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
