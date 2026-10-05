#import "../nelson_help.typ": *

= timeseries.min <time:8_timeseries.timeseries.min>

Minimum des données d'un timeseries.

== Syntaxe

- #raw("y = min(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Minimum des données du timeseries.

== Description

#strong[min]; calcule le minimum sur la propriété Data.


== Exemple

``````matlab
ts = timeseries([2; 1; 3]);
min(ts)

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
