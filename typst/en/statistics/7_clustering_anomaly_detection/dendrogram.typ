#import "../nelson_help.typ": *

= dendrogram <statistics:7_clustering_anomaly_detection.dendrogram>

Dendrogram plot for a hierarchical cluster tree.

== Syntax

- #raw("dendrogram(Z)");
- #raw("dendrogram(Z, P)");
- #raw("dendrogram(ax, ...)");
- #raw("H = dendrogram(...)");
- #raw("[H, T, outperm] = dendrogram(...)");

== Description

#strong[dendrogram]; plots a hierarchical binary cluster tree returned by #strong[linkage];.

 The function supports Reorder, CheckCrossing, ClusterIndices, ColorThreshold, ShowCut, ShowMarkers, Orientation, Labels, and Parent name-value options.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
dendrogram(Z, 0)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage];, #nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
