#import "../nelson_help.typ": *

= dendrogram <statistics:7_clustering_anomaly_detection.dendrogram>

Trace d'un dendrogramme pour un arbre de classification hierarchique.

== Syntaxe

- #raw("dendrogram(Z)");
- #raw("dendrogram(Z, P)");
- #raw("dendrogram(ax, ...)");
- #raw("H = dendrogram(...)");
- #raw("[H, T, outperm] = dendrogram(...)");

== Description

#strong[dendrogram]; trace un arbre de classification hierarchique binaire retourne par #strong[linkage];.

 La fonction prend en charge les options nom-valeur Reorder, CheckCrossing, ClusterIndices, ColorThreshold, ShowCut, ShowMarkers, Orientation, Labels et Parent.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
dendrogram(Z, 0)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage];, #nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
