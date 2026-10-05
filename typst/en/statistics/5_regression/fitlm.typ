#import "../nelson_help.typ": *

= fitlm <statistics:5_regression.fitlm>

Fit a linear regression model.

== Syntax

- #raw("mdl = fitlm(X, y)");
- #raw("mdl = fitlm(X, y, modelspec)");
- #raw("mdl = fitlm(X, y, ..., Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitlm]; creates a #strong[LinearModel]; object from numeric predictors #strong[X]; and response #strong[y];.

 Supported model specifications include #strong[constant];, #strong[linear];, #strong[interactions];, #strong[quadratic];, #strong[purequadratic];, and numeric term matrices. Name-value arguments include #strong[Intercept];, #strong[PredictorNames];, and #strong[ResponseName];.


== Example

``````matlab
X = [1 2; 2 1; 3 4; 4 3; 5 6; 6 5];
y = 1 + 2 * X(:,1) - 3 * X(:,2);
mdl = fitlm(X, y);
yfit = predict(mdl, [7 8; 8 7])
``````


== See also

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.regstats>)[regstats];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
