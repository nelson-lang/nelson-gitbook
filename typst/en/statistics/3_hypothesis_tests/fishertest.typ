#import "../nelson_help.typ": *

= fishertest <statistics:3_hypothesis_tests.fishertest>

Fisher exact test for a 2-by-2 table.

== Syntax

- #raw("h = fishertest(x)");
- #raw("[h, p, stats] = fishertest(x)");
- #raw("[h, p, stats] = fishertest(x, Name, Value)");

== Description

#strong[fishertest]; performs Fisher's exact test for a 2-by-2 contingency table. The input can be a numeric matrix or a table containing nonnegative integer counts.

 Name-value arguments include #strong[Alpha]; and #strong[Tail];. The #strong[stats]; output contains #strong[OddsRatio]; and #strong[ConfidenceInterval];.


== Example

``````matlab
x = [3 6; 1 7];
[h, p, stats] = fishertest(x, 'Tail', 'right')
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];, #nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
