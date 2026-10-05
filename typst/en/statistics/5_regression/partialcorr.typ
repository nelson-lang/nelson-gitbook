#import "../nelson_help.typ": *

= partialcorr <statistics:5_regression.partialcorr>

Linear or rank partial correlation coefficients.

== Syntax

- #raw("rho = partialcorr(X)");
- #raw("rho = partialcorr(X, Z)");
- #raw("rho = partialcorr(X, Y, Z)");
- #raw("[rho, pval] = partialcorr(...)");
- #raw("[rho, pval] = partialcorr(..., Name, Value)");

== Description

#strong[partialcorr]; computes partial correlations between columns while controlling for other variables.

 Supported options are #strong[Type]; with #strong[pearson]; or #strong[spearman];, #strong[Rows]; with #strong[all];, #strong[complete];, or #strong[pairwise];, and #strong[Tail]; with #strong[both];, #strong[right];, or #strong[left];.


== Example

``````matlab
X = [1 2 3; 2 4 1; 3 5 2; 4 8 4; 5 10 5];
Z = [1 0; 1 1; 2 1; 2 0; 3 1];
rho = partialcorr(X, Z)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];, #nlink(<statistics:1_descriptive_statistics_visualization.corrcoef>)[corrcoef];, #nlink(<statistics:1_descriptive_statistics_visualization.tiedrank>)[tiedrank];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
