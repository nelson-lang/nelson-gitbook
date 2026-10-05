#import "../nelson_help.typ": *

= spectralcluster <statistics:7_clustering_anomaly_detection.spectralcluster>

Clustering spectral.

== Syntaxe

- #raw("idx = spectralcluster(X, k)");
- #raw("idx = spectralcluster(S, k, 'Distance', 'precomputed')");
- #raw("idx = spectralcluster(..., Name, Value)");
- #raw("[idx, V, D] = spectralcluster(...)");

== Description

#strong[spectralcluster]; partitionne les observations en construisant un graphe de similarite, en calculant un plongement par laplacien de graphe, puis en classant les lignes du plongement.

 Les arguments nom-valeur incluent Distance, P, Cov, Scale, SimilarityGraph, NumNeighbors, KNNGraphType, Radius, KernelScale, LaplacianNormalization et ClusterMethod.


== Exemple

Classer deux groupes separes.

``````matlab
X = [0 0; 0 1; 1 0; 10 10; 10 11; 11 10];
idx = spectralcluster(X, 2, 'NumNeighbors', 5, 'KernelScale', 2)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans];, #nlink(<statistics:7_clustering_anomaly_detection.kmedoids>)[kmedoids];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.evalclusters>)[evalclusters];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
