#import "../nelson_help.typ": *

= rmoutliers <statistics:7_clustering_anomaly_detection.rmoutliers>

Detecte et supprime les valeurs aberrantes de donnees numeriques.

== Syntaxe

- #raw("B = rmoutliers(A)");
- #raw("B = rmoutliers(A, method)");
- #raw("B = rmoutliers(A, 'percentiles', threshold)");
- #raw("B = rmoutliers(A, movmethod, window)");
- #raw("B = rmoutliers(..., dim)");
- #raw("B = rmoutliers(..., Name, Value)");
- #raw("[B, TFrm, TFoutlier, L, U, C] = rmoutliers(...)");

== Description

#strong[rmoutliers]; detecte les valeurs aberrantes dans un vecteur ou une matrice numerique, puis supprime les entrees qui en contiennent.

 Pour les matrices, la detection s'effectue colonne par colonne. Par defaut les lignes contenant des valeurs aberrantes sont supprimees. Avec #strong[dim]; egal a 2, les colonnes contenant des valeurs aberrantes sont supprimees.

 Les methodes de detection et arguments nom-valeur sont partages avec #strong[isoutlier];. L'argument nom-valeur #strong[OutlierLocations]; peut fournir directement un masque logique.


== Exemples

``````matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = rmoutliers(A)
``````

``````matlab
A = [2 290 1 2; 1 0 323 1; 0 2 3 2; 1 1 2 3];
[B, TFrm, TFoutlier] = rmoutliers(A)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.isoutlier>)[isoutlier];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
