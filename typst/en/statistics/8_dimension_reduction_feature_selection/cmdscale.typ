#import "../nelson_help.typ": *

= cmdscale <statistics:8_dimension_reduction_feature_selection.cmdscale>

Classical multidimensional scaling.

== Syntax

- #raw("Y = cmdscale(D)");
- #raw("Y = cmdscale(D, p)");
- #raw("[Y, e] = cmdscale(...)");

== Description

#strong[cmdscale]; computes a classical multidimensional scaling configuration from a distance, dissimilarity, or similarity matrix.

 D can be a square matrix or a distance vector accepted by squareform. If p is specified, only coordinates associated with positive eigenvalues among the first p dimensions are returned.

 The vector e contains the ordered eigenvalues of the centered inner-product matrix. When p is specified, e contains at most p values.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 2 2];
D = squareform(pdist(X));
[Y, e] = cmdscale(D)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.squareform>)[squareform];, #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
