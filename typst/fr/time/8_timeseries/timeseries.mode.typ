#import "../nelson_help.typ": *

= timeseries.mode <time:8_timeseries.timeseries.mode>

Mode des données d'un timeseries.

== Syntaxe

- #raw("y = mode(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Mode des données du timeseries.

== Description

#strong[mode]; calcule le mode de la propriété Data.


== Exemple

``````matlab
ts = timeseries([1; 2; 2; 3]);
mode(ts)

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
