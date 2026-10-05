#import "../nelson_help.typ": *

= tsdata.timemetadata <time:8_timeseries.tsdata.timemetadata>

Fonction pour objets de serie temporelle.

== Syntaxe

- #raw("timemetadata(...)");

== Description

#strong[timemetadata]; opere sur les objets timeseries, tscollection ou les metadonnees tsdata.


== Exemple

``````matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1.TimeInfo.Units = 'hours';
count1.TimeInfo.Units

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
