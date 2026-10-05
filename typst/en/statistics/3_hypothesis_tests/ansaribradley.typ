#import "../nelson_help.typ": *

= ansaribradley <statistics:3_hypothesis_tests.ansaribradley>

Ansari-Bradley test for equal dispersion.

== Syntax

- #raw("h = ansaribradley(x, y)");
- #raw("h = ansaribradley(x, y, Name, Value)");
- #raw("[h, p, stats] = ansaribradley(...)");

== Description

#strong[ansaribradley]; performs a nonparametric two-sample test for equal dispersion. Vector inputs can have different lengths. Array inputs are tested along a selected dimension and must match outside that dimension.

 Name-value arguments include #strong[Alpha];, #strong[Dim];, #strong[Tail];, and #strong[Method];. The #strong[stats]; output contains #strong[W]; and #strong[Wstar];.


== Example

``````matlab
x = [1 2 9 10];
y = [4 5 6 7];
[h, p, stats] = ansaribradley(x, y)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.vartest2>)[vartest2];, #nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
