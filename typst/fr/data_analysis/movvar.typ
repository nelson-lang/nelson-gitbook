#import "nelson_help.typ": *

= movvar <data_analysis:movvar>

Variance mobile.

== Syntaxe

- #raw("R = movvar(A, window)");
- #raw("R = movvar(A, window, d)");
- #raw("R = movvar(..., nanflag)");
- #raw("R = movvar(..., 'Endpoints', endpoints)");
- #raw("[R, M] = movvar(...)");

== Argument d'entrée

/ A: tableau d'entrée.
/ window: longueur de la fenêtre : scalaire positif.
/ d: dimension de travail : entier positif scalaire.

== Argument de sortie

/ R: Variance mobile.
/ M: Moyenne mobile calculée sur les mêmes fenêtres que R (même taille que R ; une timetable pour une entrée timetable).

== Description

#strong[movvar]; calcule les variances sur une fenetre mobile centree.


== Exemples

``````matlab
A = [1 2 8 4 5];
R = movvar(A, 3)
``````

Variance mobile et moyenne mobile

``````matlab
A = [4 8 6 -1 -2 -3 -1 3 4 5];
[R, M] = movvar(A, 3)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [moyenne mobile renvoyée en deuxième sortie.],
)

// Auteur: Allan CORNET
