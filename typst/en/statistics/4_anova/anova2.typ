#import "../nelson_help.typ": *

= anova2 <statistics:4_anova.anova2>

Two-way analysis of variance.

== Syntax

- #raw("p = anova2(Y)");
- #raw("p = anova2(Y, reps)");
- #raw("p = anova2(Y, reps, displayopt)");
- #raw("[p, tbl, stats] = anova2(...)");

== Description

#strong[anova2]; performs a balanced two-way analysis of variance. Rows represent levels of the row factor and columns represent levels of the column factor.

 When #strong[reps]; is greater than one, each row-factor level occupies #strong[reps]; consecutive rows. The returned p-values test columns, rows, and interaction. Without replication, interaction is not estimated.

 #strong[displayopt]; can be #strong['on']; or #strong['off'];.


== Example

``````matlab
Y = [8 9 6; 7 8 5; 9 10 7; 12 14 11; 13 15 12; 11 13 10];
[p, tbl, stats] = anova2(Y, 2, 'off')
``````


== See also

#nlink(<statistics:4_anova.anova1>)[anova1];, #nlink(<statistics:2_probability_distributions.fcdf>)[fcdf];, #nlink(<statistics:3_hypothesis_tests.vartest2>)[vartest2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
