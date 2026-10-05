#import "../nelson_help.typ": *

= ansaribradley <statistics:3_hypothesis_tests.ansaribradley>

Test d'Ansari-Bradley pour dispersion egale.

== Syntaxe

- #raw("h = ansaribradley(x, y)");
- #raw("h = ansaribradley(x, y, Name, Value)");
- #raw("[h, p, stats] = ansaribradley(...)");

== Description

#strong[ansaribradley]; effectue un test non parametrique a deux echantillons pour une dispersion egale. Les vecteurs peuvent avoir des longueurs differentes. Les tableaux sont testes le long d'une dimension choisie et doivent correspondre hors de cette dimension.

 Les arguments nom-valeur incluent #strong[Alpha];, #strong[Dim];, #strong[Tail]; et #strong[Method];. La sortie #strong[stats]; contient #strong[W]; et #strong[Wstar];.


== Exemple

``````matlab
x = [1 2 9 10];
y = [4 5 6 7];
[h, p, stats] = ansaribradley(x, y)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.vartest2>)[vartest2];, #nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
