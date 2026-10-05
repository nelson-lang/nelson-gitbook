#import "../nelson_help.typ": *

= timeseries.iqr <time:8_timeseries.timeseries.iqr>

Écart interquartile des données d'un timeseries.

== Syntaxe

- #raw("y = iqr(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entrée.

== Argument de sortie

/ y: Écart interquartile des données du timeseries.

== Description

#strong[iqr]; calcule l'écart interquartile de la propriété Data.


== Exemple

``````matlab
ts = timeseries([1; 2; 3; 4]);
iqr(ts)

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
