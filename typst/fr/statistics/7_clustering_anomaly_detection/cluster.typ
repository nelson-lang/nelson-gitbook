#import "../nelson_help.typ": *

= cluster <statistics:7_clustering_anomaly_detection.cluster>

Construire des classes depuis un arbre hierarchique.

== Syntaxe

- #raw("T = cluster(Z, 'MaxClust', maxclust)");
- #raw("T = cluster(Z, 'Cutoff', cutoff, 'Criterion', 'distance')");

== Description

#strong[cluster]; affecte les observations a des classes en coupant un arbre hierarchique.

 Cette version prend en charge le critere distance avec MaxClust ou Cutoff.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
T = cluster(Z, 'MaxClust', 2)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
