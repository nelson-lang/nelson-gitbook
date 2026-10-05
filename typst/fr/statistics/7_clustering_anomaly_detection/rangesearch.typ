#import "../nelson_help.typ": *

= rangesearch <statistics:7_clustering_anomaly_detection.rangesearch>

Trouver tous les voisins dans une distance donnee.

== Syntaxe

- #raw("idx = rangesearch(X, Y, r)");
- #raw("idx = rangesearch(X, Y, r, Name, Value)");
- #raw("[idx, D] = rangesearch(...)");

== Description

#strong[rangesearch]; trouve toutes les lignes de #strong[X]; dont la distance a chaque ligne de requete de #strong[Y]; n'est pas superieure a #strong[r];.

 La recherche est exhaustive et native. Les sorties sont des tableaux de cellules colonnes. Les options prises en charge incluent Distance, NSMethod, SortIndices, P, Scale, Cov, BucketSize et CacheSize.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = rangesearch(X, Y, 1.1)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
