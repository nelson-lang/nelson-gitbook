#import "../nelson_help.typ": *

= fitrensemble <statistics:5_regression.fitrensemble>

Fit an ensemble regression model.

== Syntax

- #raw("mdl = fitrensemble(X, Y)");
- #raw("mdl = fitrensemble(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitrensemble]; creates a #strong[RegressionEnsemble]; object from numeric predictors #strong[X]; and numeric response #strong[Y];.

 The current implementation supports #strong[Bag]; and #strong[LSBoost]; ensembles of tree learners. Name-value arguments include #strong[Method];, #strong[Learners];, #strong[NumLearningCycles];, #strong[LearnRate];, #strong[MaxNumSplits];, #strong[MinLeafSize];, #strong[MinParentSize];, #strong[PredictorNames];, and #strong[ResponseName];.


== Example

``````matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrensemble(X, Y, 'NumLearningCycles', 5);
yfit = predict(mdl, [1.5; 4.5])
``````


== See also

#nlink(<statistics:5_regression.fitrtree>)[fitrtree];, #nlink(<statistics:5_regression.fitrknn>)[fitrknn];, #nlink(<statistics:5_regression.fitrsvm>)[fitrsvm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
