#import "../nelson_help.typ": *

= timeseries.isequalwithequalnans <time:8_timeseries.timeseries.isequalwithequalnans>

Compare des objets timeseries en considerant comme egales les valeurs numeriques manquantes.

== Syntaxe

- #raw("tf = isequalwithequalnans(ts1, ts2, ts3)");

== Argument d'entrée

/ ts1: Premier objet timeseries.
/ ts2: Objet timeseries a comparer.

== Argument de sortie

/ tf: Resultat logique de la comparaison.

== Description

#strong[isequalwithequalnans]; Compare des objets timeseries et considere comme egales les valeurs numeriques manquantes correspondantes.


== Exemple

``````matlab
ts1 = timeseries([1; NaN], [1; 2]);
ts2 = timeseries([1; NaN], [1; 2]);
isequalwithequalnans(ts1, ts2)

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
