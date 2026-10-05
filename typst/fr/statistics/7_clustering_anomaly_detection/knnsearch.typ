#import "../nelson_help.typ": *

= knnsearch <statistics:7_clustering_anomaly_detection.knnsearch>

Trouver les k plus proches voisins.

== Syntaxe

- #raw("idx = knnsearch(X, Y)");
- #raw("idx = knnsearch(X, Y, Name, Value)");
- #raw("[idx, D] = knnsearch(...)");

== Description

#strong[knnsearch]; trouve les lignes de #strong[X]; les plus proches de chaque ligne de requete de #strong[Y]; avec une recherche exhaustive native.

 Les options prises en charge incluent K, Distance, IncludeTies, NSMethod, SortIndices, P, Scale, Cov, BucketSize et CacheSize. Quand IncludeTies vaut true, les sorties sont des tableaux de cellules.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = knnsearch(X, Y, 'K', 2)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.pdist2>)[pdist2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
