#import "../nelson_help.typ": *

= timeseries.display <time:8_timeseries.timeseries.display>

Affiche un objet timeseries.

== Syntaxe

- #raw("display(ts)");

== Argument d'entrée

/ ts: Un objet timeseries.

== Description

#strong[display]; affiche un objet timeseries avec son nom de variable lorsqu'il est disponible.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
display(ts)

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
