#import "../nelson_help.typ": *

= partialcorri <statistics:5_regression.partialcorri>

Coefficients de correlation partielle ajustes sur des variables internes.

== Syntaxe

- #raw("rho = partialcorri(Y, X)");
- #raw("rho = partialcorri(Y, X, Z)");
- #raw("[rho, pval] = partialcorri(...)");
- #raw("[rho, pval] = partialcorri(..., Name, Value)");

== Description

#strong[partialcorri]; calcule les correlations partielles entre chaque colonne de #strong[Y]; et chaque colonne de #strong[X];, en ajustant sur les autres colonnes de #strong[X];.

 Quand #strong[Z]; est fourni, #strong[X]; et #strong[Y]; sont aussi controles par #strong[Z];. Les options prises en charge sont #strong[Type];, #strong[Rows]; et #strong[Tail];.


== Exemple

``````matlab
X = randn(20, 3);
Y = randn(20, 2);
rho = partialcorri(Y, X)
``````


== Voir aussi

#nlink(<statistics:5_regression.partialcorr>)[partialcorr];, #nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
