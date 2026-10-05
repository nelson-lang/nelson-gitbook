#import "../nelson_help.typ": *

= regstats <statistics:5_regression.regstats>

Regression diagnostic statistics.

== Syntax

- #raw("stats = regstats(y, X)");
- #raw("stats = regstats(y, X, modelspec)");
- #raw("stats = regstats(y, X, modelspec, StatNames)");

== Description

#strong[regstats]; fits a linear regression model of response vector #strong[y]; on predictor matrix #strong[X]; and returns diagnostic statistics in a structure.

 The model includes a constant term by default. Supported model specifications are #strong[linear];, #strong[additive];, #strong[interactions];, #strong[quadratic];, #strong[purequadratic];, a positive integer degree, or a numeric matrix of term exponents.

 #strong[StatNames]; can be #strong[all];, a text scalar, or a cell array of names. Supported statistic names include #strong[Q];, #strong[R];, #strong[beta];, #strong[covb];, #strong[yhat];, #strong[r];, #strong[mse];, #strong[rsquare];, #strong[adjrsquare];, #strong[leverage];, #strong[hatmat];, #strong[s2\_i];, #strong[beta\_i];, #strong[standres];, #strong[studres];, #strong[dfbetas];, #strong[dffit];, #strong[dffits];, #strong[covratio];, #strong[cookd];, #strong[tstat];, #strong[fstat];, and #strong[dwstat];.


== Examples

``````matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'linear', {'beta', 'rsquare', 'tstat'})
``````

``````matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'interactions', {'yhat', 'r'})
``````


== See also

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];, #nlink(<statistics:5_regression.ridge>)[ridge];, #nlink(<statistics:5_regression.lasso>)[lasso];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
