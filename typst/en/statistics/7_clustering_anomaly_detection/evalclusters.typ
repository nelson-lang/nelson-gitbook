#import "../nelson_help.typ": *

= evalclusters <statistics:7_clustering_anomaly_detection.evalclusters>

Evaluate clustering solutions.

== Syntax

- #raw("eva = evalclusters(X, clust, criterion)");
- #raw("eva = evalclusters(X, clust, criterion, Name, Value)");

== Description

#strong[evalclusters]; evaluates clustering solutions for rows of #strong[X];.

 Supported criteria are silhouette, CalinskiHarabasz, and DaviesBouldin. The clustering input can be a matrix of labels, kmeans, linkage, or a function handle. The result is a structure with evaluation properties.


== Examples

``````matlab
X = [0; 1; 10; 11];
C = [1 1; 1 1; 1 2; 1 2];
eva = evalclusters(X, C, 'CalinskiHarabasz')
``````

``````matlab
X = [0; 1; 10; 11];
eva = evalclusters(X, 'kmeans', 'silhouette', 'KList', 1:3)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.clusterdata>)[clusterdata];, #nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans];, #nlink(<statistics:7_clustering_anomaly_detection.silhouette>)[silhouette];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
