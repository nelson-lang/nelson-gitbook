#import "../nelson_help.typ": *

= ecdf <statistics:1_descriptive_statistics_visualization.ecdf>

Fonction de repartition empirique.

== Syntaxe

- #raw("[f, x] = ecdf(y)");
- #raw("[f, x] = ecdf(y, Name, Value)");
- #raw("[f, x, flo, fup] = ecdf(...)");
- #raw("ecdf(...)");
- #raw("ecdf(ax, ...)");

== Description

#strong[ecdf]; calcule les valeurs empiriques de distribution a partir d'un echantillon.

 Les arguments nom-valeur incluent Function, Censoring, Frequency, Alpha et Bounds. Les types de fonction pris en charge sont cdf, survivor et cumhazard. Bounds peut valoir on ou off pour le trace.


== Exemple

``````matlab
y = [3 1 2 2];
[f, x] = ecdf(y)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:1_descriptive_statistics_visualization.ksdensity>)[ksdensity];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
