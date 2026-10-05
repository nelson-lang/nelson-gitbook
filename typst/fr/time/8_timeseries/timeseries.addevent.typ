#import "../nelson_help.typ": *

= timeseries.addevent <time:8_timeseries.timeseries.addevent>

Ajoute un evenement a un objet timeseries.

== Syntaxe

- #raw("tsOut = addevent(ts, eventObj)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ eventObj: Evenement cree avec tsdata.event.

== Argument de sortie

/ tsOut: Objet timeseries en sortie avec l'evenement ajoute.

== Description

#strong[addevent]; Ajoute un evenement nomme a la liste Events d'un objet timeseries. Les temps des evenements utilisent le meme axe temporel que la serie.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
ev = tsdata.event('middle', 11);
ts = addevent(ts, ev);
ts.Events(1).Name

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
