#import "../nelson_help.typ": *

= runstest <statistics:3_hypothesis_tests.runstest>

Test des runs pour le hasard.

== Syntaxe

- #raw("h = runstest(x)");
- #raw("h = runstest(x, v)");
- #raw("h = runstest(x, 'ud')");
- #raw("h = runstest(..., Name, Value)");
- #raw("[h, p, stats] = runstest(...)");

== Description

#strong[runstest]; teste si les valeurs d'un vecteur apparaissent dans un ordre aleatoire. Le test par defaut compte les runs au-dessus et au-dessous de la moyenne de #strong[x];. Une valeur scalaire #strong[v]; peut etre fournie comme reference. Le mode #strong[ud]; compte les runs de montee et descente.

 Les arguments nom-valeur incluent #strong[Alpha];, #strong[Method]; et #strong[Tail];. Les valeurs #strong[NaN]; et les valeurs exactement egales a la reference sont omises.


== Exemple

``````matlab
x = [1 2 3 4 5 0 -1 -2];
[h, p, stats] = runstest(x)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.signtest>)[signtest];, #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
