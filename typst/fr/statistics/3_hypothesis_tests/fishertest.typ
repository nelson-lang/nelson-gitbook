#import "../nelson_help.typ": *

= fishertest <statistics:3_hypothesis_tests.fishertest>

Test exact de Fisher pour un tableau 2 par 2.

== Syntaxe

- #raw("h = fishertest(x)");
- #raw("[h, p, stats] = fishertest(x)");
- #raw("[h, p, stats] = fishertest(x, Name, Value)");

== Description

#strong[fishertest]; effectue le test exact de Fisher pour un tableau de contingence 2 par 2. L'entree peut etre une matrice numerique ou une table contenant des effectifs entiers non negatifs.

 Les arguments nom-valeur incluent #strong[Alpha]; et #strong[Tail];. La sortie #strong[stats]; contient #strong[OddsRatio]; et #strong[ConfidenceInterval];.


== Exemple

``````matlab
x = [3 6; 1 7];
[h, p, stats] = fishertest(x, 'Tail', 'right')
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];, #nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
