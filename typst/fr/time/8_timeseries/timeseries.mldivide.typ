#import "../nelson_help.typ": *

= timeseries.mldivide <time:8_timeseries.timeseries.mldivide>

Division matricielle gauche pour les donnees timeseries.

== Syntaxe

- #raw("tsOut = mldivide(a, b)");
- #raw("tsOut = a \\ b");

== Argument d'entrée

/ a: Objet timeseries gauche ou scalaire.
/ b: Objet timeseries droit ou scalaire.

== Argument de sortie

/ tsOut: Objet timeseries resultant.

== Description

#strong[mldivide]; Applique la division matricielle gauche aux valeurs de donnees et preserve l'axe temporel d'une entree timeseries.


== Exemple

``````matlab
ts = timeseries([10; 20], [1; 2]);
out = 10 \ ts;
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
