#import "../nelson_help.typ": *

= GeneralizedLinearModel <statistics:5_regression.GeneralizedLinearModel>

Generalized linear regression model.

== Syntax

- #raw("mdl = fitglm(X, y)");
- #raw("mdl = fitglm(X, y, modelspec)");
- #raw("yfit = predict(mdl, Xnew)");

== Input argument

/ X: numeric matrix: rows are observations and columns are predictors.
/ y: numeric vector: response values with one value for each row of X.
/ Name, Value: optional name-value arguments accepted by the corresponding fitting function.

== Output argument

/ mdl: regression model object returned by the fitting function.
/ yfit: predicted response values for new observations.

== Description

GeneralizedLinearModel stores a generalized linear model fitted from predictors and a response.

 Create this object with fitglm. Use predict to evaluate fitted responses for new predictor values.


== Used function(s)

fitglm predict

== Example

Fit a generalized linear model and predict two responses.

``````matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitglm(X, y);
yfit = predict(mdl, [7 4; 8 5])
``````


== See also

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:5_regression.fitglm>)[fitglm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
