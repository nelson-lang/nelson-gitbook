#import "../nelson_help.typ": *

= tscollection.gettimeseriesnames <time:8_timeseries.tscollection.gettimeseriesnames>

Fonction utilitaire pour les séries temporelles.

== Syntaxe

- #raw("gettimeseriesnames(...)");

== Description

#strong[gettimeseriesnames]; opère sur des objets timeseries ou tscollection.


== Exemple

``````matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
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
