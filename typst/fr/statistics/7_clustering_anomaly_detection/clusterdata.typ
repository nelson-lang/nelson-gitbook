#import "../nelson_help.typ": *

= clusterdata <statistics:7_clustering_anomaly_detection.clusterdata>

Regrouper les observations depuis les donnees.

== Syntaxe

- #raw("T = clusterdata(X, 'MaxClust', maxclust)");
- #raw("T = clusterdata(X, 'Cutoff', cutoff, 'Criterion', 'distance')");
- #raw("T = clusterdata(..., 'Linkage', method)");
- #raw("T = clusterdata(..., 'Distance', metric)");

== Description

#strong[clusterdata]; regroupe les lignes de #strong[X]; en construisant un arbre hierarchique puis en le coupant en classes.

 Cette version prend en charge le critere distance avec MaxClust ou Cutoff. Les options Linkage et Distance sont transmises a #strong[linkage];.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
T = clusterdata(X, 'MaxClust', 2)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster];, #nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
