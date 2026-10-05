#import "../../nelson_help.typ": *

= shrinkfaces <graphics:1_plots.7_surfaces_volumes_polygons.shrinkfaces>

Reduire la taille des faces d'un patch.

== Syntaxe

- #raw("shrinkfaces(p, sf)");
- #raw("nfv = shrinkfaces(p, sf)");
- #raw("nfv = shrinkfaces(fv, sf)");
- #raw("nfv = shrinkfaces(faces, vertices, sf)");
- #raw("[newFaces, newVertices] = shrinkfaces(...)");

== Argument d'entrée

/ p: Handle de patch.
/ fv: Structure avec les champs faces et vertices.
/ sf: Facteur de reduction non negatif. La valeur par defaut est 0.3.

== Argument de sortie

/ nfv, newFaces, newVertices: Faces et sommets reduits avec des sommets non partages.

== Description

#strong[shrinkfaces]; deplace chaque sommet de face vers le centre de sa face et cree des sommets non partages.


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.
