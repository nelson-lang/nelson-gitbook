#import "../nelson_help.typ": *

= timeseries.sum <time:8_timeseries.timeseries.sum>

Somme des données d'un timeseries.

== Syntaxe

- #raw("y = sum(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Somme des données du timeseries.

== Description

#strong[sum]; calcule la somme de la propriété Data.


== Exemple

``````matlab
ts = timeseries([1; 2; 3]);
sum(ts)

``````


== Voir aussi

#nlink(<time:8_timeseries.timeseries>)[timeseries];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
