#import "../nelson_help.typ": *

= filloutliers <statistics:7_clustering_anomaly_detection.filloutliers>

Detecte et remplace les valeurs aberrantes dans des donnees numeriques.

== Syntaxe

- #raw("B = filloutliers(A, fillmethod)");
- #raw("B = filloutliers(A, fillmethod, method)");
- #raw("B = filloutliers(A, fillmethod, 'percentiles', threshold)");
- #raw("B = filloutliers(A, fillmethod, movmethod, window)");
- #raw("B = filloutliers(..., dim)");
- #raw("B = filloutliers(..., Name, Value)");
- #raw("[B, TF, L, U, C] = filloutliers(...)");

== Description

#strong[filloutliers]; detecte les valeurs aberrantes dans un tableau numerique et les remplace avec la methode de remplissage choisie.

 Les methodes de remplissage incluent #strong[previous];, #strong[next];, #strong[nearest];, #strong[linear];, #strong[pchip];, #strong[clip]; ou une constante scalaire numerique. Les methodes de detection et arguments nom-valeur sont partages avec #strong[isoutlier];. L'argument nom-valeur #strong[OutlierLocations]; peut fournir directement un masque logique.


== Exemples

``````matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = filloutliers(A, 'linear')
``````

``````matlab
A = [60 59 49 49 58 100 61 57 48 58];
[B, TF, L, U, C] = filloutliers(A, 'clip')
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.isoutlier>)[isoutlier];, #nlink(<statistics:7_clustering_anomaly_detection.rmoutliers>)[rmoutliers];, #nlink(<data_analysis:fillmissing>)[fillmissing];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
