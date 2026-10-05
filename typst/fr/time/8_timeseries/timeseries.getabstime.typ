#import "../nelson_help.typ": *

= timeseries.getabstime <time:8_timeseries.timeseries.getabstime>

Renvoie les temps d'echantillon absolus.

== Syntaxe

- #raw("times = getabstime(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entree.

== Argument de sortie

/ times: Temps d'echantillon absolus sous forme de chaines de date.

== Description

#strong[getabstime]; Convertit les temps d'echantillon numeriques en chaines de date absolue avec TimeInfo.StartDate et TimeInfo.Units.


== Exemple

``````matlab
ts = timeseries([1; 2], [0; 1]);
ts = setabstime(ts, '01-Jan-2024');
getabstime(ts)

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
