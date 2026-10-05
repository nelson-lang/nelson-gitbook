#import "../nelson_help.typ": *

= timeseries.detrend <time:8_timeseries.timeseries.detrend>

Supprime une tendance des donnees timeseries.

== Syntaxe

- #raw("tsOut = detrend(ts)");
- #raw("tsOut = detrend(ts, 'constant')");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ option: Mode detrend optionnel.

== Argument de sortie

/ tsOut: Objet timeseries en sortie sans tendance.

== Description

#strong[detrend]; Applique detrend aux donnees numeriques et preserve l'axe temporel et les metadonnees.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts = detrend(ts, 'constant');
ts.Data

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
