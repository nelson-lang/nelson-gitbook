#import "../nelson_help.typ": *

= timeseries.getdatasamplesize <time:8_timeseries.timeseries.getdatasamplesize>

Renvoie la taille d'un echantillon de donnees.

== Syntaxe

- #raw("sz = getdatasamplesize(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entree.

== Argument de sortie

/ sz: Taille d'un seul echantillon de donnees.

== Description

#strong[getdatasamplesize]; Renvoie les dimensions d'un seul echantillon, sans la dimension temporelle.


== Exemple

``````matlab
ts = timeseries([1 10; 2 20; 3 30], [1; 2; 3]);
getdatasamplesize(ts)

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
