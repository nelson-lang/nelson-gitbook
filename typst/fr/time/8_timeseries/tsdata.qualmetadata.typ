#import "../nelson_help.typ": *

= tsdata.qualmetadata <time:8_timeseries.tsdata.qualmetadata>

Fonction pour objets de serie temporelle.

== Syntaxe

- #raw("qualmetadata(...)");

== Description

#strong[qualmetadata]; opere sur les objets timeseries, tscollection ou les metadonnees tsdata.


== Exemple

``````matlab
info = tsdata.qualmetadata('Code', [1], 'Description', {'ok'});
info.Description

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
