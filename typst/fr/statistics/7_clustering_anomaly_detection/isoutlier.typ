#import "../nelson_help.typ": *

= isoutlier <statistics:7_clustering_anomaly_detection.isoutlier>

Detecte les valeurs aberrantes dans des donnees numeriques.

== Syntaxe

- #raw("TF = isoutlier(A)");
- #raw("TF = isoutlier(A, method)");
- #raw("TF = isoutlier(A, 'percentiles', threshold)");
- #raw("TF = isoutlier(A, movmethod, window)");
- #raw("TF = isoutlier(..., dim)");
- #raw("TF = isoutlier(..., Name, Value)");
- #raw("[TF, L, U, C] = isoutlier(...)");

== Description

#strong[isoutlier]; retourne un tableau logique qui marque les elements detectes comme valeurs aberrantes.

 Les methodes prises en charge sont #strong[median];, #strong[mean];, #strong[quartiles];, #strong[percentiles];, #strong[grubbs];, #strong[gesd];, #strong[movmedian]; et #strong[movmean];. Les valeurs numeriques #strong[NaN]; sont ignorees pour l'estimation des seuils et ne sont pas marquees comme valeurs aberrantes.

 Les arguments nom-valeur incluent #strong[ThresholdFactor];, #strong[MaxNumOutliers]; et #strong[SamplePoints];. Les sorties supplementaires contiennent le seuil inferieur, le seuil superieur et la valeur centrale.


== Exemples

``````matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
TF = isoutlier(A)
``````

``````matlab
A = [60 59 49 49 58 100 61 57 48 58];
[TF, L, U, C] = isoutlier(A, 'median')
``````

``````matlab
A = [1 1 100 1 1];
t = [1 2 100 101 102];
TF = isoutlier(A, 'movmedian', 3, 'SamplePoints', t)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.zscore>)[zscore];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
