#import "../nelson_help.typ": *

= timeseries.std <time:8_timeseries.timeseries.std>

Écart-type des données d'un timeseries.

== Syntaxe

- #raw("y = std(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Écart-type des données du timeseries.

== Description

#strong[std]; calcule l'écart-type de la propriété Data.


== Exemple

``````matlab
ts = timeseries([1; 2; 3]);
std(ts)

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
