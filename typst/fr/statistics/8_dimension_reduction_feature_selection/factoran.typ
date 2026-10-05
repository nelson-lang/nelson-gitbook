#import "../nelson_help.typ": *

= factoran <statistics:8_dimension_reduction_feature_selection.factoran>

Analyse factorielle.

== Syntaxe

- #raw("lambda = factoran(X, m)");
- #raw("lambda = factoran(X, m, Name, Value)");
- #raw("[lambda, psi, T, stats, F] = factoran(...)");

== Description

#strong[factoran]; estime les charges factorielles pour une matrice de donnees reelles ou une matrice de covariance.

 Les arguments nom-valeur incluent Xtype, Rotate, Scores, Start, Options et Coeff. Les rotations prises en charge incluent varimax, quartimax, equamax, parsimax, orthomax et none.


== Exemple

``````matlab
X = [1 2 3; 2 3 5; 4 5 8; 5 7 11; 7 8 13; 8 10 16];
[lambda, psi, T, stats, F] = factoran(X, 2)
``````


== Voir aussi

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov];, #nlink(<statistics:8_dimension_reduction_feature_selection.ppca>)[ppca];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
