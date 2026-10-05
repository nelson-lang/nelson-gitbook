#import "../nelson_help.typ": *

= mahal <statistics:7_clustering_anomaly_detection.mahal>

Squared Mahalanobis distance to reference samples.

== Syntax

- #raw("d2 = mahal(Y, X)");

== Description

#strong[mahal]; returns the squared Mahalanobis distance of each observation in #strong[Y]; to the reference sample matrix #strong[X];.

 #strong[X]; and #strong[Y]; must have the same number of columns. #strong[X]; must have more rows than columns.


== Example

``````matlab
X = [1 2; 2 3; 3 5; 4 4; 5 7; 6 8];
Y = [3 4; 5 6; 8 10];
d2 = mahal(Y, X)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:7_clustering_anomaly_detection.pdist2>)[pdist2];, #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
