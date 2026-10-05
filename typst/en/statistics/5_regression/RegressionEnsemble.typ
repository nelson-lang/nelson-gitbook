#import "../nelson_help.typ": *

= RegressionEnsemble <statistics:5_regression.RegressionEnsemble>

Regression ensemble model.

== Syntax

- #raw("mdl = fitrensemble(X, y)");
- #raw("yfit = predict(mdl, Xnew)");

== Input argument

/ X: numeric matrix: rows are observations and columns are predictors.
/ y: numeric vector: response values with one value for each row of X.
/ Name, Value: optional name-value arguments accepted by the corresponding fitting function.

== Output argument

/ mdl: regression model object returned by the fitting function.
/ yfit: predicted response values for new observations.

== Description

RegressionEnsemble stores a regression model that combines multiple weak learners.

 Create this object with fitrensemble. Use predict to aggregate learner responses for new observations.


== Used function(s)

fitrensemble predict

== Example

Train a regression ensemble and predict two responses.

``````matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitrensemble(X, y, 'NumLearningCycles', 3);
yfit = predict(mdl, [7 4; 8 5])
``````


== See also

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:5_regression.fitrensemble>)[fitrensemble];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
