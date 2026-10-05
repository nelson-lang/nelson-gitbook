#import "../nelson_help.typ": *

= tscollection.vertcat <time:8_timeseries.tscollection.vertcat>

Fonction pour objets de serie temporelle.

== Syntaxe

- #raw("vertcat(...)");

== Description

#strong[vertcat]; opere sur les objets timeseries, tscollection ou les metadonnees tsdata.


== Exemple

``````matlab
ts1 = timeseries([1], [10], 'Name', 'speed');
ts2 = timeseries([2], [11], 'Name', 'speed');
tsc = [tscollection(ts1); tscollection(ts2)];
tsc.Time

``````


== Voir aussi

#nlink(<time:8_timeseries.timeseries>)[timeseries];, #nlink(<time:8_timeseries.tscollection>)[tscollection];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
