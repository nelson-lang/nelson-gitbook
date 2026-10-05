#import "../nelson_help.typ": *

= timeseries.mrdivide <time:8_timeseries.timeseries.mrdivide>

Division matricielle droite pour les donnees timeseries.

== Syntaxe

- #raw("tsOut = mrdivide(a, b)");
- #raw("tsOut = a / b");

== Argument d'entrée

/ a: Objet timeseries gauche ou scalaire.
/ b: Objet timeseries droit ou scalaire.

== Argument de sortie

/ tsOut: Objet timeseries resultant.

== Description

#strong[mrdivide]; Applique la division matricielle droite aux valeurs de donnees et preserve l'axe temporel d'une entree timeseries.


== Exemple

``````matlab
ts = timeseries([10; 20], [1; 2]);
out = ts / 10;
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
