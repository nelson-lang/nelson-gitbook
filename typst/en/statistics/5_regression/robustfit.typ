#import "../nelson_help.typ": *

= robustfit <statistics:5_regression.robustfit>

Robust linear regression.

== Syntax

- #raw("b = robustfit(X, y)");
- #raw("b = robustfit(X, y, wfun, tune, const)");
- #raw("[b, stats] = robustfit(...)");

== Description

#strong[robustfit]; fits a linear regression model using iteratively reweighted least squares.

 By default, a constant column is added before fitting. Supported weight functions include #strong[bisquare];, #strong[huber];, #strong[fair];, #strong[cauchy];, #strong[welsch];, #strong[talwar];, #strong[andrews];, #strong[logistic];, #strong[ols];, and function handles.


== Example

``````matlab
x = (1:10)';
y = 10 - 2*x + randn(10,1);
[b, stats] = robustfit(x, y)
``````


== See also

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
