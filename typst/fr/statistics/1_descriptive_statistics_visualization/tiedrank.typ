#import "../nelson_help.typ": *

= tiedrank <statistics:1_descriptive_statistics_visualization.tiedrank>

Rangs avec moyenne pour les ex aequo.

== Syntaxe

- #raw("R = tiedrank(X)");
- #raw("[R, tieadj] = tiedrank(X)");
- #raw("[R, tieadj] = tiedrank(X, kendall)");
- #raw("[R, tieadj] = tiedrank(X, kendall, bidirectional)");

== Description

#strong[tiedrank]; calcule les rangs selon la premiere dimension et attribue le rang moyen aux valeurs ex aequo. Les valeurs #strong[NaN]; sont ignorees et gardent un rang #strong[NaN];.

 Lorsque #strong[kendall]; est vrai, #strong[tieadj]; contient les trois termes d'ajustement des ex aequo pour la correlation de rang de Kendall. Lorsque #strong[bidirectional]; est vrai, les rangs sont attribues depuis les deux extremites des donnees triees.


== Exemple

``````matlab
X = [-2 1 3 1 4];
[R, tieadj] = tiedrank(X)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:3_hypothesis_tests.friedman>)[friedman];, #nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
