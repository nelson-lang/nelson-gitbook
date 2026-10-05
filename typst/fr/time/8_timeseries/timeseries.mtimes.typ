#import "../nelson_help.typ": *

= timeseries.mtimes <time:8_timeseries.timeseries.mtimes>

Multiplication matricielle pour les donnees timeseries.

== Syntaxe

- #raw("tsOut = mtimes(a, b)");
- #raw("tsOut = a * b");

== Argument d'entrée

/ a: Objet timeseries gauche ou scalaire.
/ b: Objet timeseries droit ou scalaire.

== Argument de sortie

/ tsOut: Objet timeseries resultant.

== Description

#strong[mtimes]; Applique la multiplication matricielle aux valeurs de donnees et preserve l'axe temporel d'une entree timeseries.


== Exemple

``````matlab
ts = timeseries([1; 2], [1; 2]);
out = ts * 2;
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
