#import "../nelson_help.typ": *

= fitrtree <statistics:5_regression.fitrtree>

Fit a regression decision tree.

== Syntax

- #raw("mdl = fitrtree(X, Y)");
- #raw("mdl = fitrtree(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");
- #raw("[yfit, node] = predict(mdl, Xnew)");

== Description

#strong[fitrtree]; creates a #strong[RegressionTree]; object from numeric predictors #strong[X]; and numeric response #strong[Y];.

 Name-value arguments include #strong[MaxNumSplits];, #strong[MinLeafSize];, #strong[MinParentSize];, #strong[PredictorNames];, and #strong[ResponseName];. Numeric predictors are split with binary threshold tests that reduce squared error.


== Example

``````matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrtree(X, Y, 'MaxNumSplits', 2);
yfit = predict(mdl, [1.5; 4.5])
``````


== See also

#nlink(<statistics:6_classification.fitctree>)[fitctree];, #nlink(<statistics:5_regression.fitlm>)[fitlm];, #nlink(<statistics:5_regression.fitglm>)[fitglm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
