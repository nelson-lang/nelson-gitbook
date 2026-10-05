#import "../nelson_help.typ": *

= timeseries.eq <time:8_timeseries.timeseries.eq>

Compare deux objets timeseries echantillon par echantillon.

== Syntaxe

- #raw("tfTs = eq(a, b)");
- #raw("tfTs = a == b");

== Argument d'entrée

/ a: Objet timeseries gauche ou scalaire.
/ b: Objet timeseries droit ou scalaire.

== Argument de sortie

/ tfTs: Objet timeseries resultant.

== Description

#strong[eq]; Compare les valeurs de donnees en preservant l'axe temporel lorsqu'une entree timeseries est utilisee.


== Exemple

``````matlab
left = timeseries([1; 2], [1; 2]);
right = timeseries([1; 3], [1; 2]);
out = left == right;
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
