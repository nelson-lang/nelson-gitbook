#import "../nelson_help.typ": *

= spectralcluster <statistics:7_clustering_anomaly_detection.spectralcluster>

Spectral clustering.

== Syntax

- #raw("idx = spectralcluster(X, k)");
- #raw("idx = spectralcluster(S, k, 'Distance', 'precomputed')");
- #raw("idx = spectralcluster(..., Name, Value)");
- #raw("[idx, V, D] = spectralcluster(...)");

== Description

#strong[spectralcluster]; partitions observations by constructing a similarity graph, computing a graph Laplacian embedding, and clustering the embedded rows.

 Name-value arguments include Distance, P, Cov, Scale, SimilarityGraph, NumNeighbors, KNNGraphType, Radius, KernelScale, LaplacianNormalization, and ClusterMethod.


== Example

Cluster two separated groups.

``````matlab
X = [0 0; 0 1; 1 0; 10 10; 10 11; 11 10];
idx = spectralcluster(X, 2, 'NumNeighbors', 5, 'KernelScale', 2)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans];, #nlink(<statistics:7_clustering_anomaly_detection.kmedoids>)[kmedoids];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.evalclusters>)[evalclusters];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
