#import "../nelson_help.typ": *

= timeseries.filter <time:8_timeseries.timeseries.filter>

Filtre les donnees timeseries.

== Syntaxe

- #raw("tsOut = filter(ts, b, a)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ b: Coefficients du numerateur du filtre.
/ a: Coefficients du denominateur du filtre.

== Argument de sortie

/ tsOut: Objet timeseries filtre en sortie.

== Description

#strong[filter]; Execute filter sur les valeurs de donnees et preserve le temps, le nom, les evenements et les metadonnees.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts = filter(ts, [1 1] / 2, 1);
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
