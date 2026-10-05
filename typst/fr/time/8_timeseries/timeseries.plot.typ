#import "../nelson_help.typ": *

= timeseries.plot <time:8_timeseries.timeseries.plot>

Trace les donnees timeseries en fonction du temps.

== Syntaxe

- #raw("h = plot(ts)");
- #raw("h = plot(ax, ts)");
- #raw("h = plot(ts, lineSpec)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ ax: Axes cibles optionnels.
/ lineSpec: Style de ligne ou arguments graphiques optionnels.

== Argument de sortie

/ h: Handle graphique vers la ligne ou l'objet stairs trace.

== Description

#strong[plot]; Trace le temps des echantillons sur l'axe x et les donnees timeseries sur l'axe y. L'interpolation par maintien d'ordre zero utilise un trace en escalier.


== Exemple

``````matlab
f = figure();
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
h = plot(ts);

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
