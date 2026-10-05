#import "../nelson_help.typ": *

= fitrsvm <statistics:5_regression.fitrsvm>

Fit a support vector regression model.

== Syntax

- #raw("mdl = fitrsvm(X, Y)");
- #raw("mdl = fitrsvm(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitrsvm]; creates a #strong[RegressionSVM]; object from numeric predictors #strong[X]; and numeric response #strong[Y];.

 Name-value arguments include #strong[KernelFunction];, #strong[KernelScale];, #strong[PolynomialOrder];, #strong[BoxConstraint];, #strong[Epsilon];, #strong[Standardize];, #strong[PredictorNames];, and #strong[ResponseName];. Supported kernels are #strong[linear];, #strong[gaussian];, #strong[rbf];, and #strong[polynomial];.


== Example

``````matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrsvm(X, Y, 'KernelFunction', 'gaussian');
yfit = predict(mdl, [1.5; 4.5])
``````


== See also

#nlink(<statistics:6_classification.fitcsvm>)[fitcsvm];, #nlink(<statistics:5_regression.fitrknn>)[fitrknn];, #nlink(<statistics:5_regression.fitrtree>)[fitrtree];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
