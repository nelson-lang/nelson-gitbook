#import "../nelson_help.typ": *

= linkage <statistics:7_clustering_anomaly_detection.linkage>

Agglomerative hierarchical cluster tree.

== Syntax

- #raw("Z = linkage(X)");
- #raw("Z = linkage(X, method)");
- #raw("Z = linkage(X, method, metric)");
- #raw("Z = linkage(X, method, metric, distanceParameter)");
- #raw("Z = linkage(D, method)");

== Description

#strong[linkage]; builds a hierarchical cluster tree from rows of #strong[X]; or from a condensed distance vector #strong[D];.

 Supported methods are single, complete, average, weighted, centroid, median, and ward.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X, 'average');
T = cluster(Z, 'MaxClust', 2)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.squareform>)[squareform];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
