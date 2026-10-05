#import "../nelson_help.typ": *

= relieff <statistics:8_dimension_reduction_feature_selection.relieff>

Rank predictor importance using ReliefF.

== Syntax

- #raw("[idx, weights] = relieff(X, y, k)");
- #raw("[idx, weights] = relieff(X, y, k, Name, Value)");

== Description

#strong[relieff]; ranks predictors using nearest-neighbor ReliefF for classification or an RReliefF-style score for regression.

 Supported name-value options are Method, Prior, Updates, CategoricalX, and Sigma. idx contains predictor indices ordered by decreasing importance. weights contains one score per predictor.


== Example

``````matlab
X = [0 0; 0 1; 1 0; 1 1; 3 0; 3 1];
y = [1; 1; 1; 1; 2; 2];
[idx, weights] = relieff(X, y, 1, 'Method', 'classification')
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];, #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
