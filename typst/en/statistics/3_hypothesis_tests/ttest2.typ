#import "../nelson_help.typ": *

= ttest2 <statistics:3_hypothesis_tests.ttest2>

Two-sample t-test

== Syntax

- #raw("h = ttest2(x, y)");
- #raw("h = ttest2(x, y, 'Alpha', alpha)");
- #raw("h = ttest2(x, y, 'Tail', tail)");
- #raw("h = ttest2(x, y, 'Vartype', vartype)");
- #raw("h = ttest2(x, y, 'Dim', dim)");
- #raw("[h, p, ci, stats] = ttest2(...)");

== Input argument

/ x: real numeric array: first sample.
/ y: real numeric array: second sample.
/ alpha: scalar in (0,1), 0.05 by default: significance level.
/ tail: 'both', 'right', or 'left'.
/ vartype: 'equal' by default or 'unequal' for Welch's test.
/ dim: positive integer: dimension to operate along.

== Output argument

/ h: logical array: test decision.
/ p: array: p-values.
/ ci: 2-row array: confidence intervals for the mean difference.
/ stats: structure with tstat, df, and sd fields.

== Description

#strong[ttest2]; performs a two-sample t-test along the first non-singleton dimension unless #strong[Dim]; is specified.

 NaN values are omitted independently from each tested sample.


== Example

``````matlab
x = [10 11 13 15 18];
y = [7 8 8 9];
[h, p, ci, stats] = ttest2(x, y, 'Vartype', 'unequal', 'Tail', 'right');
``````


== See also

#nlink(<statistics:3_hypothesis_tests.ttest>)[ttest];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
