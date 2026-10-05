#import "../nelson_help.typ": *

= timeseries.var <time:8_timeseries.timeseries.var>

Variance des données d'un timeseries.

== Syntaxe

- #raw("y = var(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Variance des données du timeseries.

== Description

#strong[var]; calcule la variance de la propriété Data.


== Exemple

``````matlab
ts = timeseries([1; 2; 3]);
var(ts)

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
