#import "../nelson_help.typ": *

= tsdata.event <time:8_timeseries.tsdata.event>

Fonction pour objets de serie temporelle.

== Syntaxe

- #raw("event(...)");

== Description

#strong[event]; opere sur les objets timeseries, tscollection ou les metadonnees tsdata.


== Exemple

``````matlab
morning = tsdata.event('AMCommute', 2);
morning.Units = 'hours';
morning.Time

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
