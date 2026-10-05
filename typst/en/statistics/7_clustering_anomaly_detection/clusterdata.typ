#import "../nelson_help.typ": *

= clusterdata <statistics:7_clustering_anomaly_detection.clusterdata>

Cluster observations from data.

== Syntax

- #raw("T = clusterdata(X, 'MaxClust', maxclust)");
- #raw("T = clusterdata(X, 'Cutoff', cutoff, 'Criterion', 'distance')");
- #raw("T = clusterdata(..., 'Linkage', method)");
- #raw("T = clusterdata(..., 'Distance', metric)");

== Description

#strong[clusterdata]; groups rows of #strong[X]; by building a hierarchical cluster tree and cutting it into clusters.

 This version supports the distance criterion with MaxClust or Cutoff. Linkage and distance options are passed to #strong[linkage];.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
T = clusterdata(X, 'MaxClust', 2)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster];, #nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
