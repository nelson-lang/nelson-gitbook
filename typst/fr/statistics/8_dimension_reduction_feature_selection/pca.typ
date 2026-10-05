#import "../nelson_help.typ": *

= pca <statistics:8_dimension_reduction_feature_selection.pca>

Analyse en composantes principales de donnees brutes.

== Syntaxe

- #raw("coeff = pca(X)");
- #raw("coeff = pca(X, Name, Value)");
- #raw("[coeff, score, latent] = pca(...)");
- #raw("[coeff, score, latent, tsquared, explained, mu] = pca(...)");

== Description

#strong[pca]; calcule les coefficients des composantes principales pour une matrice numerique dont les lignes sont les observations et les colonnes les variables.

 Les arguments nom-valeur incluent Algorithm, Centered, Economy, NumComponents, Rows, Weights et VariableWeights. Le calcul principal utilise une decomposition native en valeurs singulieres ou en valeurs propres.


== Exemple

``````matlab
X = [1 2; 3 4; 5 8; 7 11];
[coeff, score, latent] = pca(X)
``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];, #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
