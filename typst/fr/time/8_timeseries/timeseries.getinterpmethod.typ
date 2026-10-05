#import "../nelson_help.typ": *

= timeseries.getinterpmethod <time:8_timeseries.timeseries.getinterpmethod>

Renvoie le nom de la methode d'interpolation.

== Syntaxe

- #raw("method = getinterpmethod(ts)");

== Argument d'entrée

/ ts: Objet timeseries en entree.

== Argument de sortie

/ method: Nom de la methode d'interpolation.

== Description

#strong[getinterpmethod]; Lit la methode d'interpolation stockee dans ts.DataInfo.Interpolation.


== Exemple

``````matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'nearest');
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
