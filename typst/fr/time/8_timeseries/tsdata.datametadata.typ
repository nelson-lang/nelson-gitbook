#import "../nelson_help.typ": *

= tsdata.datametadata <time:8_timeseries.tsdata.datametadata>

Fonction pour objets de serie temporelle.

== Syntaxe

- #raw("datametadata(...)");

== Description

#strong[datametadata]; opere sur les objets timeseries, tscollection ou les metadonnees tsdata.


== Exemple

``````matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1.DataInfo.Units = 'cars';
count1.DataInfo.Interpolation = tsdata.interpolation('zoh');
count1.DataInfo

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
