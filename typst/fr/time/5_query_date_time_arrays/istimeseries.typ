#import "../nelson_help.typ": *

= istimeseries <time:5_query_date_time_arrays.istimeseries>

Determine si l entree est un objet timeseries.

== Syntaxe

- #raw("tf = istimeseries(value)");

== Argument d'entrée

/ value: Valeur d entree.

== Argument de sortie

/ tf: Resultat logique.

== Description

#strong[istimeseries]; retourne true lorsque l entree est un objet timeseries.


== Exemple

``````matlab
ts = timeseries([1; 2], [10; 11]);
istimeseries(ts)

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
