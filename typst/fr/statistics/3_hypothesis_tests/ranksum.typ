#import "../nelson_help.typ": *

= ranksum <statistics:3_hypothesis_tests.ranksum>

Test de somme des rangs de Wilcoxon.

== Syntaxe

- #raw("p = ranksum(x, y)");
- #raw("p = ranksum(x, y, Name, Value)");
- #raw("[p, h, stats] = ranksum(...)");

== Description

#strong[ranksum]; effectue un test de somme des rangs a deux echantillons. Les observations #strong[NaN]; sont omises dans chaque vecteur d'entree.

 Les arguments nom-valeur incluent #strong[Alpha];, #strong[Tail]; et #strong[Method];. Les queues prises en charge sont both, right et left. Les methodes prises en charge sont auto, exact et approximate.


== Exemple

``````matlab
x = [1 3 5];
y = [2 4 6];
[p, h, stats] = ranksum(x, y)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis];, #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
