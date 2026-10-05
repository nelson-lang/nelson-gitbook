#import "../nelson_help.typ": *

= fitcknn <statistics:6_classification.fitcknn>

Fit a k-nearest neighbor classifier.

== Syntax

- #raw("mdl = fitcknn(X, Y)");
- #raw("mdl = fitcknn(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost] = predict(mdl, Xnew)");

== Description

#strong[fitcknn]; creates a #strong[ClassificationKNN]; object from numeric predictors #strong[X]; and class labels #strong[Y];.

 Name-value arguments include #strong[NumNeighbors];, #strong[Distance];, #strong[DistanceWeight];, #strong[Standardize];, #strong[P];, #strong[Scale];, and #strong[ClassNames];. Prediction uses native nearest-neighbor search and returns class scores normalized across classes.


== Example

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcknn(X, Y, 'NumNeighbors', 3);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];, #nlink(<statistics:7_clustering_anomaly_detection.fitgmdist>)[fitgmdist];, #nlink(<statistics:6_classification.grp2idx>)[grp2idx];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
