#import "../nelson_help.typ": *

= regress <statistics:5_regression.regress>

Regression lineaire multiple.

== Syntaxe

- #raw("b = regress(y, X)");
- #raw("[b, bint] = regress(y, X)");
- #raw("[b, bint, r] = regress(y, X)");
- #raw("[b, bint, r, rint] = regress(y, X)");
- #raw("[b, bint, r, rint, stats] = regress(y, X)");
- #raw("[...] = regress(y, X, alpha)");

== Description

#strong[regress]; estime les coefficients d'un modele de regression lineaire multiple du vecteur reponse #strong[y]; sur la matrice de predicteurs #strong[X];.

 Les lignes contenant des valeurs #strong[NaN]; dans #strong[y]; ou #strong[X]; sont ignorees pendant l'ajustement. Ajouter une colonne de uns dans #strong[X]; pour ajuster une constante.


== Exemple

``````matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [ones(6, 1), (1:6)'];
[b, bint, r, rint, stats] = regress(y, X)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];, #nlink(<statistics:5_regression.partialcorr>)[partialcorr];, #nlink(<statistics:2_probability_distributions.tcdf>)[tcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
