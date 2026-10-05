#import "../nelson_help.typ": *

= fitgmdist <statistics:7_clustering_anomaly_detection.fitgmdist>

Ajuster une distribution de melange gaussien.

== Syntaxe

- #raw("gm = fitgmdist(X, k)");
- #raw("gm = fitgmdist(X, k, Name, Value)");

== Description

#strong[fitgmdist]; ajuste un modele de melange gaussien a #strong[k]; composantes aux lignes de #strong[X]; avec l'algorithme esperance-maximisation.

 Les arguments nom-valeur incluent Start, Replicates, RegularizationValue, CovarianceType, SharedCovariance, MaxIter, TolFun et Options.


== Exemple

Ajuster et classer un melange simple.

``````matlab
X = [0; 1; 10; 11];
gm = fitgmdist(X, 2, 'Start', [1; 1; 2; 2]);
idx = cluster(gm, X)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.gmdistribution>)[gmdistribution];, #nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans];, #nlink(<statistics:7_clustering_anomaly_detection.clusterdata>)[clusterdata];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
