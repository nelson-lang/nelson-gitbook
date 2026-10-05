#import "../nelson_help.typ": *

= friedman <statistics:3_hypothesis_tests.friedman>

Friedman test for blocked data.

== Syntax

- #raw("p = friedman(X)");
- #raw("p = friedman(X, reps)");
- #raw("p = friedman(X, reps, displayopt)");
- #raw("[p, tbl, stats] = friedman(...)");

== Description

#strong[friedman]; performs a nonparametric test for column treatment effects in blocked data. Rows are blocks and columns are treatments.

 When #strong[reps]; is greater than one, each block occupies #strong[reps]; consecutive rows. #strong[displayopt]; can be #strong['on']; or #strong['off'];.


== Example

``````matlab
X = [9 7 6; 8 6 5; 7 8 6; 10 9 7; 9 10 8];
[p, tbl, stats] = friedman(X, 'off')
``````


== See also

#nlink(<statistics:4_anova.anova2>)[anova2];, #nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis];, #nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
