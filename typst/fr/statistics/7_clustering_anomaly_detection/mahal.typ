#import "../nelson_help.typ": *

= mahal <statistics:7_clustering_anomaly_detection.mahal>

Distance de Mahalanobis au carre vers des echantillons de reference.

== Syntaxe

- #raw("d2 = mahal(Y, X)");

== Description

#strong[mahal]; renvoie la distance de Mahalanobis au carre de chaque observation de #strong[Y]; vers la matrice d'echantillons de reference #strong[X];.

 #strong[X]; et #strong[Y]; doivent avoir le meme nombre de colonnes. #strong[X]; doit avoir plus de lignes que de colonnes.


== Exemple

``````matlab
X = [1 2; 2 3; 3 5; 4 4; 5 7; 6 8];
Y = [3 4; 5 6; 8 10];
d2 = mahal(Y, X)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:7_clustering_anomaly_detection.pdist2>)[pdist2];, #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
