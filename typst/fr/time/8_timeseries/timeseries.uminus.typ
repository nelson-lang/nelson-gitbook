#import "../nelson_help.typ": *

= timeseries.uminus <time:8_timeseries.timeseries.uminus>

Change le signe des donnees timeseries.

== Syntaxe

- #raw("tsOut = uminus(ts)");
- #raw("tsOut = -ts");

== Argument d'entrée

/ ts: Objet timeseries en entree.

== Argument de sortie

/ tsOut: Objet timeseries de sortie dont le signe des donnees est change.

== Description

#strong[uminus]; Change le signe de la propriete Data et preserve le temps et les metadonnees.


== Exemple

``````matlab
ts = timeseries([1; -2], [1; 2]);
out = -ts;
out.Data

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
