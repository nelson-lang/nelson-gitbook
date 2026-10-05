#import "../nelson_help.typ": *

= signtest <statistics:3_hypothesis_tests.signtest>

Test des signes.

== Syntaxe

- #raw("p = signtest(x)");
- #raw("p = signtest(x, y)");
- #raw("p = signtest(x, m)");
- #raw("p = signtest(x, y, Name, Value)");
- #raw("[p, h, stats] = signtest(...)");

== Description

#strong[signtest]; effectue un test des signes pour une mediane ou une difference appariee. Si #strong[y]; est omis, les valeurs de #strong[x]; sont testees contre zero. Si #strong[y]; est un scalaire, les valeurs de #strong[x]; sont testees contre ce scalaire.

 Les arguments nom-valeur incluent #strong[Alpha];, #strong[Method]; et #strong[Tail];. Les differences nulles et les valeurs #strong[NaN]; sont omises.


== Exemple

``````matlab
x = [1 2 -3 4 -5];
[p, h, stats] = signtest(x)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
