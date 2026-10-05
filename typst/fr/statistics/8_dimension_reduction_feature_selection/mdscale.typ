#import "../nelson_help.typ": *

= mdscale <statistics:8_dimension_reduction_feature_selection.mdscale>

Positionnement multidimensionnel non classique.

== Syntaxe

- #raw("Y = mdscale(D, p)");
- #raw("Y = mdscale(D, p, Name, Value)");
- #raw("[Y, stress] = mdscale(...)");
- #raw("[Y, stress, disparities] = mdscale(...)");

== Description

#strong[mdscale]; calcule une configuration de positionnement multidimensionnel a partir d'une matrice de dissimilarites ou d'un vecteur de distances.

 Les options nom-valeur incluent Criterion, Weights, Start, Replicates et Options. Les criteres supportes sont stress, sstress, metricstress, metricsstress, sammon et strain.

 Les dissimilarites NaN sont traitees comme des valeurs manquantes. La structure Options peut etre creee avec statset et supporte Display, MaxIter, TolFun et TolX.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 2 2];
D = pdist(X);
[Y, stress, disparities] = mdscale(D, 2)
``````


== Voir aussi

#nlink(<statistics:8_dimension_reduction_feature_selection.cmdscale>)[cmdscale];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.squareform>)[squareform];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
