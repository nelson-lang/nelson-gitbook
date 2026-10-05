#import "../nelson_help.typ": *

= timeseries.gettsatevent <time:8_timeseries.timeseries.gettsatevent>

Renvoie les echantillons au temps d'un evenement.

== Syntaxe

- #raw("tsOut = gettsatevent(ts, eventName)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ eventName: Nom d'un evenement dans ts.Events.

== Argument de sortie

/ tsOut: Objet timeseries en sortie contenant les echantillons selectionnes.

== Description

#strong[gettsatevent]; Recherche l'evenement nomme et conserve les echantillons dont le temps est egal au temps de l'evenement.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsatevent(ts, 'middle').Data

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
