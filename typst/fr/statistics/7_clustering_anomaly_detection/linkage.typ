#import "../nelson_help.typ": *

= linkage <statistics:7_clustering_anomaly_detection.linkage>

Arbre de classification hierarchique ascendante.

== Syntaxe

- #raw("Z = linkage(X)");
- #raw("Z = linkage(X, method)");
- #raw("Z = linkage(X, method, metric)");
- #raw("Z = linkage(X, method, metric, distanceParameter)");
- #raw("Z = linkage(D, method)");

== Description

#strong[linkage]; construit un arbre de classification hierarchique a partir des lignes de #strong[X]; ou d'un vecteur de distances condense #strong[D];.

 Les methodes prises en charge sont single, complete, average, weighted, centroid, median et ward.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X, 'average');
T = cluster(Z, 'MaxClust', 2)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.squareform>)[squareform];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
