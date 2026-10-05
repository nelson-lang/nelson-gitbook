#import "../nelson_help.typ": *

= friedman <statistics:3_hypothesis_tests.friedman>

Test de Friedman pour donnees en blocs.

== Syntaxe

- #raw("p = friedman(X)");
- #raw("p = friedman(X, reps)");
- #raw("p = friedman(X, reps, displayopt)");
- #raw("[p, tbl, stats] = friedman(...)");

== Description

#strong[friedman]; effectue un test non parametrique des effets de traitements en colonnes pour des donnees en blocs. Les lignes sont les blocs et les colonnes sont les traitements.

 Lorsque #strong[reps]; est superieur a un, chaque bloc occupe #strong[reps]; lignes consecutives. #strong[displayopt]; peut valoir #strong['on']; ou #strong['off'];.


== Exemple

``````matlab
X = [9 7 6; 8 6 5; 7 8 6; 10 9 7; 9 10 8];
[p, tbl, stats] = friedman(X, 'off')
``````


== Voir aussi

#nlink(<statistics:4_anova.anova2>)[anova2];, #nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis];, #nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
