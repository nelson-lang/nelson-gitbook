#import "../nelson_help.typ": *

= timeseries.getsamples <time:8_timeseries.timeseries.getsamples>

Renvoie un sous-ensemble timeseries par indice.

== Syntaxe

- #raw("tsOut = getsamples(ts, indices)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ indices: Indices d'echantillons a conserver.

== Argument de sortie

/ tsOut: Sous-ensemble timeseries avec les echantillons selectionnes.

== Description

#strong[getsamples]; Selectionne des echantillons et preserve les evenements et les metadonnees.


== Exemple

``````matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
ts2 = getsamples(ts, 2:3);
ts2.Time

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
