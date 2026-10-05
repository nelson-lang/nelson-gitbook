#import "../nelson_help.typ": *

= fsrftest <statistics:3_hypothesis_tests.fsrftest>

Classement des predicteurs avec des tests F de regression univaries.

== Syntaxe

- #raw("idx = fsrftest(X, y)");
- #raw("[idx, scores] = fsrftest(X, y)");
- #raw("[idx, scores] = fsrftest(X, y, Name, Value)");

== Description

#strong[fsrftest]; classe les predicteurs en appliquant un test F de regression independant a chaque colonne de X.

 Les options nom-valeur supportees sont CategoricalPredictors, NumBins, UseMissing et Weights. idx contient les indices des predicteurs par score decroissant. scores contient un score par predicteur.


== Exemple

``````matlab
X = [1 0 3; 2 1 2; 3 0 1; 4 1 2; 5 0 3; 6 1 4];
y = [1; 2; 2; 4; 4; 7];
[idx, scores] = fsrftest(X, y, 'NumBins', 2)
``````


== Voir aussi

#nlink(<statistics:8_dimension_reduction_feature_selection.relieff>)[relieff];, #nlink(<statistics:8_dimension_reduction_feature_selection.sequentialfs>)[sequentialfs];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
