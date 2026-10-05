#import "../nelson_help.typ": *

= tscollection.horzcat <time:8_timeseries.tscollection.horzcat>

Fonction pour objets de serie temporelle.

== Syntaxe

- #raw("horzcat(...)");

== Description

#strong[horzcat]; opere sur les objets timeseries, tscollection ou les metadonnees tsdata.


== Exemple

``````matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'a');
ts2 = timeseries([3; 4], [10; 11], 'Name', 'b');
tsc = [tscollection(ts1), tscollection(ts2)];
gettimeseriesnames(tsc)

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
