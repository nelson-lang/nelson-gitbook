#import "../nelson_help.typ": *

= timeseries.median <time:8_timeseries.timeseries.median>

Médiane des données d'un timeseries.

== Syntaxe

- #raw("y = median(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Médiane des données du timeseries.

== Description

#strong[median]; calcule la médiane de la propriété Data.


== Exemple

``````matlab
ts = timeseries([1; 5; 3]);
median(ts)

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
