#import "../nelson_help.typ": *

= signrank <statistics:3_hypothesis_tests.signrank>

Test des rangs signes de Wilcoxon.

== Syntaxe

- #raw("p = signrank(x)");
- #raw("p = signrank(x, y)");
- #raw("p = signrank(x, y, Name, Value)");
- #raw("[p, h, stats] = signrank(...)");

== Description

#strong[signrank]; effectue un test apparie des rangs signes de Wilcoxon. Si #strong[y]; est omis, les valeurs de #strong[x]; sont testees contre zero. Si #strong[y]; est un scalaire, les valeurs de #strong[x]; sont testees contre ce scalaire.

 Les arguments nom-valeur incluent #strong[Alpha];, #strong[Tail]; et #strong[Method];. Les differences nulles et #strong[NaN]; sont omises.


== Exemple

``````matlab
x = [1 3 5 -2];
[p, h, stats] = signrank(x)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:3_hypothesis_tests.ttest>)[ttest];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
