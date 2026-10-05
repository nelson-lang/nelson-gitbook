#import "nelson_help.typ": *

= movstd <data_analysis:movstd>

Ecart type mobile.

== Syntaxe

- #raw("R = movstd(A, window)");
- #raw("R = movstd(A, window, d)");
- #raw("R = movstd(..., nanflag)");
- #raw("R = movstd(..., 'Endpoints', endpoints)");
- #raw("[R, M] = movstd(...)");

== Argument d'entrée

/ A: tableau d'entrée.
/ window: longueur de la fenêtre : scalaire positif.
/ d: dimension de travail : entier positif scalaire.

== Argument de sortie

/ R: Écart type mobile.
/ M: Moyenne mobile calculée sur les mêmes fenêtres que R (même taille que R ; une timetable pour une entrée timetable).

== Description

#strong[movstd]; calcule les ecarts types sur une fenetre mobile centree.


== Exemples

``````matlab
A = [1 2 8 4 5];
R = movstd(A, 3)
``````

Écart type mobile et moyenne mobile

``````matlab
A = [4 8 6 -1 -2 -3 -1 3 4 5];
[R, M] = movstd(A, 3)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [moyenne mobile renvoyée en deuxième sortie.],
)

// Auteur: Allan CORNET
