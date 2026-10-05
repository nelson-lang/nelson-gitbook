#import "../nelson_help.typ": *

= rotatefactors <statistics:8_dimension_reduction_feature_selection.rotatefactors>

Rotation de charges factorielles.

== Syntaxe

- #raw("B = rotatefactors(X)");
- #raw("B = rotatefactors(X, Name, Value)");
- #raw("[B, T] = rotatefactors(...)");

== Description

#strong[rotatefactors]; applique une rotation aux colonnes de charges factorielles. Les methodes prises en charge incluent varimax, quartimax, equamax, parsimax, orthomax, promax, procrustes et pattern.

 Les arguments nom-valeur incluent Method, Normalize, RelTol, MaxIt, Coeff, Power, Target et Type.


== Exemple

``````matlab
X = [0.8 0.2; 0.7 -0.1; 0.1 0.9; 0.2 0.8];
[B, T] = rotatefactors(X)
``````


== Voir aussi

#nlink(<statistics:8_dimension_reduction_feature_selection.factoran>)[factoran];, #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
