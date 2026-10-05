#import "../nelson_help.typ": *

= timeseries.delevent <time:8_timeseries.timeseries.delevent>

Supprime un evenement d'un objet timeseries.

== Syntaxe

- #raw("tsOut = delevent(ts, eventName)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ eventName: Nom de l'evenement a supprimer.

== Argument de sortie

/ tsOut: Objet timeseries en sortie avec l'evenement supprime.

== Description

#strong[delevent]; Supprime de la liste Events les evenements nommes correspondants.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
ts = delevent(ts, 'middle');
numel(ts.Events)

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
