#import "../nelson_help.typ": *

= tsdata.interpolation <time:8_timeseries.tsdata.interpolation>

Fonction pour objets de serie temporelle.

== Syntaxe

- #raw("interpolation(...)");

== Description

#strong[interpolation]; opere sur les objets timeseries, tscollection ou les metadonnees tsdata.


== Exemple

``````matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1 = setinterpmethod(count1, 'zoh');
getinterpmethod(count1)

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
