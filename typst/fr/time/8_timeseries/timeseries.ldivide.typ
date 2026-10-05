#import "../nelson_help.typ": *

= timeseries.ldivide <time:8_timeseries.timeseries.ldivide>

Division gauche element par element des donnees timeseries.

== Syntaxe

- #raw("tsOut = ldivide(a, b)");
- #raw("tsOut = a .\\ b");

== Argument d'entrée

/ a: Objet timeseries gauche ou scalaire.
/ b: Objet timeseries droit ou scalaire.

== Argument de sortie

/ tsOut: Objet timeseries resultant.

== Description

#strong[ldivide]; Applique la division gauche element par element et preserve l'axe temporel d'une entree timeseries.


== Exemple

``````matlab
ts = timeseries([10; 20], [1; 2]);
out = 10 .\ ts;
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
