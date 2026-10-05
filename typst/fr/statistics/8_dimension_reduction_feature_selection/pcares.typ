#import "../nelson_help.typ": *

= pcares <statistics:8_dimension_reduction_feature_selection.pcares>

Residus d'une analyse en composantes principales.

== Syntaxe

- #raw("residuals = pcares(X, NumComponents)");
- #raw("[residuals, reconstructed] = pcares(X, NumComponents)");

== Description

#strong[pcares]; retourne les residus obtenus en conservant le nombre demande de composantes principales de la matrice de donnees X.

 La sortie reconstructed est l'approximation de X de dimension reduite, et residuals est egal a X moins reconstructed.


== Exemple

``````matlab
X = [1 2; 3 4; 5 8; 7 11];
[residuals, reconstructed] = pcares(X, 1)
``````


== Voir aussi

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
