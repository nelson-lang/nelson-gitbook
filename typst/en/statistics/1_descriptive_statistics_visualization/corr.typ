#import "../nelson_help.typ": *

= corr <statistics:1_descriptive_statistics_visualization.corr>

Linear or rank correlation.

== Syntax

- #raw("rho = corr(X)");
- #raw("rho = corr(X, Y)");
- #raw("[rho, pval] = corr(...)");
- #raw("[rho, pval] = corr(..., Name, Value)");

== Description

#strong[corr]; computes pairwise correlations between columns of #strong[X];, or between columns of #strong[X]; and #strong[Y];.

 Supported options are #strong[Type]; with #strong[pearson];, #strong[spearman];, or #strong[kendall];; #strong[Rows]; with #strong[all];, #strong[complete];, or #strong[pairwise];; #strong[Tail]; with #strong[both];, #strong[right];, or #strong[left];; and #strong[Weights]; for observation weights.


== Example

``````matlab
X = [1 2 3; 2 4 1; 3 NaN 2; 4 8 4; 5 10 5];
rho = corr(X, 'Rows', 'pairwise')
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.corrcoef>)[corrcoef];, #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:1_descriptive_statistics_visualization.tiedrank>)[tiedrank];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
