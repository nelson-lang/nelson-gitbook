#import "../nelson_help.typ": *

= timeseries.plus <time:8_timeseries.timeseries.plus>

Ajoute des donnees timeseries.

== Syntaxe

- #raw("tsOut = plus(a, b)");
- #raw("tsOut = a + b");

== Argument d'entrée

/ a: Objet timeseries gauche ou scalaire.
/ b: Objet timeseries droit ou scalaire.

== Argument de sortie

/ tsOut: Objet timeseries resultant.

== Description

#strong[plus]; Ajoute les valeurs de donnees et preserve l'axe temporel d'une entree timeseries.


== Exemple

``````matlab
a = timeseries([1; 2], [1; 2]);
b = timeseries([10; 20], [1; 2]);
out = a + b;
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
