#import "../nelson_help.typ": *

= fitrknn <statistics:5_regression.fitrknn>

Fit a k-nearest-neighbor regression model.

== Syntax

- #raw("mdl = fitrknn(X, Y)");
- #raw("mdl = fitrknn(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");
- #raw("[yfit, D] = predict(mdl, Xnew)");

== Description

#strong[fitrknn]; creates a #strong[RegressionKNN]; object from numeric predictors #strong[X]; and numeric response #strong[Y];.

 Name-value arguments include #strong[NumNeighbors];, #strong[Distance];, #strong[DistanceWeight];, #strong[Standardize];, #strong[P];, #strong[Scale];, #strong[PredictorNames];, and #strong[ResponseName];. Prediction returns weighted neighbor response averages.


== Example

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1.2; 1.1; 10; 10.2; 10.1];
mdl = fitrknn(X, Y, 'NumNeighbors', 3);
yfit = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== See also

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:5_regression.fitrtree>)[fitrtree];, #nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
