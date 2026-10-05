#import "../nelson_help.typ": *

= RegressionSVM <statistics:5_regression.RegressionSVM>

Support vector machine regression model.

== Syntax

- #raw("mdl = fitrsvm(X, y)");
- #raw("yfit = predict(mdl, Xnew)");

== Input argument

/ X: numeric matrix: rows are observations and columns are predictors.
/ y: numeric vector: response values with one value for each row of X.
/ Name, Value: optional name-value arguments accepted by the corresponding fitting function.

== Output argument

/ mdl: regression model object returned by the fitting function.
/ yfit: predicted response values for new observations.

== Description

RegressionSVM stores a support vector machine regression model, including support vectors, kernel information, and response data.

 Create this object with fitrsvm. Use predict to estimate responses for new observations.


== Used function(s)

fitrsvm predict

== Example

Train a support vector regression model and predict two responses.

``````matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitrsvm(X, y, 'KernelFunction', 'linear');
yfit = predict(mdl, [7 4; 8 5])
``````


== See also

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:5_regression.fitrsvm>)[fitrsvm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
