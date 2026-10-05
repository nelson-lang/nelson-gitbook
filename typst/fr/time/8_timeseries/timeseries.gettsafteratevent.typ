#import "../nelson_help.typ": *

= timeseries.gettsafteratevent <time:8_timeseries.timeseries.gettsafteratevent>

Renvoie les echantillons au temps d'un evenement ou apres.

== Syntaxe

- #raw("tsOut = gettsafteratevent(ts, eventName)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ eventName: Nom d'un evenement dans ts.Events.

== Argument de sortie

/ tsOut: Objet timeseries en sortie contenant les echantillons selectionnes.

== Description

#strong[gettsafteratevent]; Recherche l'evenement nomme et conserve les echantillons dont le temps est superieur ou egal au temps de l'evenement.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsafteratevent(ts, 'middle').Data

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
