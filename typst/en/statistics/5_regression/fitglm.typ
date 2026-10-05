#import "../nelson_help.typ": *

= fitglm <statistics:5_regression.fitglm>

Fit a generalized linear regression model.

== Syntax

- #raw("mdl = fitglm(X, y)");
- #raw("mdl = fitglm(X, y, modelspec)");
- #raw("mdl = fitglm(X, y, ..., Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitglm]; creates a #strong[GeneralizedLinearModel]; object from numeric predictors #strong[X]; and response #strong[y];.

 Supported distributions are #strong[normal];, #strong[binomial];, and #strong[poisson];. Supported links are #strong[identity];, #strong[log];, and #strong[logit];, with canonical defaults for each distribution.

 Supported model specifications include #strong[constant];, #strong[linear];, #strong[interactions];, #strong[quadratic];, #strong[purequadratic];, and numeric term matrices. Name-value arguments include #strong[Distribution];, #strong[Link];, #strong[Intercept];, #strong[PredictorNames];, #strong[ResponseName];, #strong[MaxIter];, and #strong[TolFun];.


== Example

``````matlab
X = [0; 1; 2; 3; 4; 5; 6; 7];
y = [1; 1; 2; 3; 5; 8; 13; 21];
mdl = fitglm(X, y, 'Distribution', 'poisson');
yfit = predict(mdl, [2; 4; 6])
``````


== See also

#nlink(<statistics:5_regression.fitlm>)[fitlm];, #nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
