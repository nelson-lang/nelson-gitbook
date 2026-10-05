#import "../nelson_help.typ": *

= LinearModel <statistics:5_regression.LinearModel>

Linear regression model.

== Syntax

- #raw("mdl = fitlm(X, y)");
- #raw("mdl = fitlm(X, y, modelspec)");
- #raw("yfit = predict(mdl, Xnew)");

== Input argument

/ X: numeric matrix: rows are observations and columns are predictors.
/ y: numeric vector: response values with one value for each row of X.
/ Name, Value: optional name-value arguments accepted by the corresponding fitting function.

== Output argument

/ mdl: regression model object returned by the fitting function.
/ yfit: predicted response values for new observations.

== Description

LinearModel stores a fitted linear regression model, including coefficients, predictor names, and response information.

 Create this object with fitlm. Use predict to evaluate fitted responses for new predictor values.


== Used function(s)

fitlm predict

== Example

Fit a linear model and predict two responses.

``````matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitlm(X, y);
yfit = predict(mdl, [7 4; 8 5])
``````


== See also

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:5_regression.fitlm>)[fitlm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
