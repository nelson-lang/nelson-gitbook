#import "../../nelson_help.typ": *

= isonormals <graphics:1_plots.7_surfaces_volumes_polygons.isonormals>

Calculer les normales des sommets d'une isosurface.

== Syntaxe

- #raw("n = isonormals(X, Y, Z, V, vertices)");
- #raw("n = isonormals(V, vertices)");
- #raw("n = isonormals(V, p)");
- #raw("n = isonormals(X, Y, Z, V, p)");
- #raw("n = isonormals(..., 'negate')");
- #raw("isonormals(V, p)");

== Argument d'entrée

/ X, Y, Z: Vecteurs de grille ou tableaux 3-D de meme taille que V.
/ V: Donnees volumiques 3-D reelles numeriques.
/ vertices, p: Matrice de sommets N-by-3 ou handle de patch.

== Argument de sortie

/ n: Vecteurs normaux N-by-3 interpoles depuis le gradient du volume.

== Description

#strong[isonormals]; calcule les normales aux sommets d'une isosurface. Avec un handle de patch et sans sortie, la propriete VertexNormals est definie.


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.smooth3>)[smooth3];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.
