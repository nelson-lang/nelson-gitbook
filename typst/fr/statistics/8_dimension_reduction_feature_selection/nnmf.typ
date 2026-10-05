#import "../nelson_help.typ": *

= nnmf <statistics:8_dimension_reduction_feature_selection.nnmf>

Factorisation de matrice non negative.

== Syntaxe

- #raw("[W, H] = nnmf(A, k)");
- #raw("[W, H] = nnmf(A, k, Name, Value)");
- #raw("[W, H, D] = nnmf(...)");

== Description

#strong[nnmf]; factorise la matrice non negative A en deux facteurs non negatifs W et H afin que W\*H approxime A.

 Les options nom-valeur supportees sont Algorithm, W0, H0, Options et Replicates. Algorithm peut etre als ou mult. La structure Options peut etre creee avec statset et supporte Display, MaxIter, TolFun et TolX.

 Les lignes de H sont normalisees a une longueur unitaire et les colonnes de W sont ordonnees par longueur decroissante. D est le residu quadratique moyen.


== Exemple

``````matlab
A = rand(20, 10);
[W, H, D] = nnmf(A, 3)
``````


== Voir aussi

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:9_design_of_experiments.statset>)[statset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
