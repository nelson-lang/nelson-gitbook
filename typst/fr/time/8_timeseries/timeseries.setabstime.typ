#import "../nelson_help.typ": *

= timeseries.setabstime <time:8_timeseries.timeseries.setabstime>

Definit la date de debut absolue des temps d'echantillon.

== Syntaxe

- #raw("tsOut = setabstime(ts, startDate)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ startDate: Chaine de date utilisee comme origine temporelle absolue.

== Argument de sortie

/ tsOut: Objet timeseries en sortie avec la date de debut absolue definie.

== Description

#strong[setabstime]; Stocke une date de debut absolue dans TimeInfo. Les temps d'echantillon numeriques restent relatifs a cette date de debut.


== Exemple

``````matlab
ts = timeseries([1; 2], [0; 1]);
ts = setabstime(ts, '01-Jan-2024');
ts.TimeInfo.StartDate

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
