#import "../nelson_help.typ": *

= grp2idx <statistics:6_classification.grp2idx>

Cree un vecteur d'indices depuis une variable de groupe.

== Syntaxe

- #raw("[g, gN] = grp2idx(s)");
- #raw("[g, gN, gL] = grp2idx(s)");

== Description

#strong[grp2idx]; convertit une variable de groupe en indices numeriques.

 #strong[gN]; est un tableau de cellules de noms de groupes. #strong[gL]; contient les niveaux de groupes dans un type proche de l'entree lorsque c'est possible. Les valeurs de groupe manquantes produisent des indices #strong[NaN];.


== Exemple

``````matlab
s = {'red', 'blue', 'red', ''};
[g, gN, gL] = grp2idx(s)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats];, #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];, #nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
