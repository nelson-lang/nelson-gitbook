#import "../nelson_help.typ": *

= canoncorr <statistics:5_regression.canoncorr>

Analyse de correlation canonique.

== Syntaxe

- #raw("[A, B] = canoncorr(X, Y)");
- #raw("[A, B, r] = canoncorr(X, Y)");
- #raw("[A, B, r, U, V] = canoncorr(X, Y)");
- #raw("[A, B, r, U, V, stats] = canoncorr(X, Y)");

== Description

#strong[canoncorr]; calcule les coefficients canoniques pour deux matrices reelles ayant les memes lignes d'observation.

 Le vecteur r contient les correlations canoniques d'echantillon. U et V contiennent les scores canoniques centres. La structure stats contient les champs Wilks, df1, df2, F, pF, chisq, pChisq, dfe et p.

 Si une matrice d'entree est de rang deficient, les lignes de coefficients dependantes sont mises a zero.


== Exemple

``````matlab
X = [1 2 3; 2 1 5; 3 4 4; 4 3 8; 5 7 6; 6 5 9];
Y = [3 4; 1 7; 5 5; 2 11; 9 6; 4 12];
[A, B, r, U, V, stats] = canoncorr(X, Y)
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
