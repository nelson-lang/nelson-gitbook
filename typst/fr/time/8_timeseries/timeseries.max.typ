#import "../nelson_help.typ": *

= timeseries.max <time:8_timeseries.timeseries.max>

Maximum des données d'un timeseries.

== Syntaxe

- #raw("y = max(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Maximum des données du timeseries.

== Description

#strong[max]; calcule le maximum sur la propriété Data.


== Exemple

``````matlab
ts = timeseries([1; 3; 2]);
max(ts)

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
