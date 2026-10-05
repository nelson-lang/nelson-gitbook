#import "../nelson_help.typ": *

= regress <statistics:5_regression.regress>

Multiple linear regression.

== Syntax

- #raw("b = regress(y, X)");
- #raw("[b, bint] = regress(y, X)");
- #raw("[b, bint, r] = regress(y, X)");
- #raw("[b, bint, r, rint] = regress(y, X)");
- #raw("[b, bint, r, rint, stats] = regress(y, X)");
- #raw("[...] = regress(y, X, alpha)");

== Description

#strong[regress]; estimates coefficients for a multiple linear regression model of response vector #strong[y]; on predictor matrix #strong[X];.

 Rows containing #strong[NaN]; values in #strong[y]; or #strong[X]; are omitted from the fit. Include a column of ones in #strong[X]; to fit an intercept.


== Example

``````matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [ones(6, 1), (1:6)'];
[b, bint, r, rint, stats] = regress(y, X)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];, #nlink(<statistics:5_regression.partialcorr>)[partialcorr];, #nlink(<statistics:2_probability_distributions.tcdf>)[tcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
