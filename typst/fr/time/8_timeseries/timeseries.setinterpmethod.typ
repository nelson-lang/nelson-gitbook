#import "../nelson_help.typ": *

= timeseries.setinterpmethod <time:8_timeseries.timeseries.setinterpmethod>

Definit la methode d'interpolation.

== Syntaxe

- #raw("tsOut = setinterpmethod(ts, method)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ method: Methode d'interpolation : linear, zoh ou nearest.

== Argument de sortie

/ tsOut: Objet timeseries en sortie avec la methode d'interpolation definie.

== Description

#strong[setinterpmethod]; Met a jour ts.DataInfo.Interpolation avec la methode d'interpolation demandee.


== Exemple

``````matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'zoh');
getinterpmethod(ts)

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
