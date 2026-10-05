#import "../nelson_help.typ": *

= partialcorri <statistics:5_regression.partialcorri>

Partial correlation coefficients adjusted for internal variables.

== Syntax

- #raw("rho = partialcorri(Y, X)");
- #raw("rho = partialcorri(Y, X, Z)");
- #raw("[rho, pval] = partialcorri(...)");
- #raw("[rho, pval] = partialcorri(..., Name, Value)");

== Description

#strong[partialcorri]; computes partial correlations between each column of #strong[Y]; and each column of #strong[X];, adjusting for the remaining columns of #strong[X];.

 When #strong[Z]; is supplied, both #strong[X]; and #strong[Y]; are additionally controlled for #strong[Z];. Supported options are #strong[Type];, #strong[Rows];, and #strong[Tail];.


== Example

``````matlab
X = randn(20, 3);
Y = randn(20, 2);
rho = partialcorri(Y, X)
``````


== See also

#nlink(<statistics:5_regression.partialcorr>)[partialcorr];, #nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
