#import "../nelson_help.typ": *

= vartest2 <statistics:3_hypothesis_tests.vartest2>

F-test for equal variances

== Syntax

- #raw("h = vartest2(x, y)");
- #raw("h = vartest2(x, y, 'Alpha', alpha)");
- #raw("h = vartest2(x, y, 'Tail', tail)");
- #raw("h = vartest2(x, y, 'Dim', dim)");
- #raw("[h, p, ci, stats] = vartest2(...)");

== Input argument

/ x: real numeric array: first sample.
/ y: real numeric array: second sample.
/ alpha: scalar in (0,1), 0.05 by default: significance level.
/ tail: 'both', 'right', or 'left'.
/ dim: positive integer: dimension to operate along.

== Output argument

/ h: logical array: test decision.
/ p: array: p-values.
/ ci: 2-row array: confidence intervals for the variance ratio.
/ stats: structure with fstat, df1, and df2 fields.

== Description

#strong[vartest2]; performs an F-test comparing two sample variances along the first non-singleton dimension unless #strong[Dim]; is specified.

 NaN values are omitted independently from each tested sample.


== Example

``````matlab
x = [4.5 4.8 5.1 5.4 5.7 6.0];
y = [3.9 4.1 4.2 4.4 4.5];
[h, p, ci, stats] = vartest2(x, y);
``````


== See also

#nlink(<statistics:3_hypothesis_tests.vartest>)[vartest];, #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
