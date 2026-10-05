#import "../nelson_help.typ": *

= cluster <statistics:7_clustering_anomaly_detection.cluster>

Construct clusters from a hierarchical cluster tree.

== Syntax

- #raw("T = cluster(Z, 'MaxClust', maxclust)");
- #raw("T = cluster(Z, 'Cutoff', cutoff, 'Criterion', 'distance')");

== Description

#strong[cluster]; assigns observations to clusters by cutting a hierarchical cluster tree.

 This version supports the distance criterion with MaxClust or Cutoff.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
T = cluster(Z, 'MaxClust', 2)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
