#import "../nelson_help.typ": *

= crosstab <statistics:1_descriptive_statistics_visualization.crosstab>

Cross-tabulation.

== Syntax

- #raw("tbl = crosstab(x1, x2)");
- #raw("tbl = crosstab(x1, ..., xn)");
- #raw("tbl = crosstab(datatbl)");
- #raw("tbl = crosstab(..., 'IncludeMissingGroups', tf)");
- #raw("tbl = crosstab(..., 'OutputFormat', format)");
- #raw("[tbl, chi2, p, labels] = crosstab(...)");

== Description

#strong[crosstab]; counts combinations of grouping variable values.

 The default output format is a numeric matrix. The supported output formats are matrix, table, and stacked-table. The chi-square statistic and p-value are returned for two-dimensional count matrices.


== Example

``````matlab
x = [1 1 2 2];
y = {'a', 'b', 'a', 'b'};
[tbl, chi2, p, labels] = crosstab(x, y)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];, #nlink(<data_analysis:groupcounts>)[groupcounts];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
