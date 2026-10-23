#import "../../nelson_help.typ": *

= surf2patch <graphics:1_plots.7_surfaces_volumes_polygons.surf2patch>

Convertit des données de surface en données de patch.

== Syntaxe

- #raw("fvc = surf2patch(Z)");
- #raw("fvc = surf2patch(X, Y, Z)");
- #raw("fvc = surf2patch(X, Y, Z, C)");
- #raw("fvc = surf2patch(h)");
- #raw("fvc = surf2patch(..., 'triangles')");
- #raw("[F, V] = surf2patch(...)");
- #raw("[F, V, C] = surf2patch(...)");

== Argument d'entrée

/ X, Y, Z: les coordonnées de la surface. X et Y peuvent être des vecteurs ou des matrices ; Z est une matrice d'au moins deux lignes et deux colonnes.
/ C: les données de couleur ; par défaut Z si omis.
/ h: un objet surface dont les données sont converties.

== Argument de sortie

/ fvc: une structure avec les champs 'faces', 'vertices' et 'facevertexcdata', utilisable directement par #strong[patch];.
/ F, V, C: les faces, les sommets et les données de couleur renvoyés séparément.

== Description

#strong[surf2patch]; convertit la géométrie d'une surface en faces et sommets d'un patch. La grille d'une surface #strong[(m)];-par-#strong[(n)]; devient #strong[(m-1)\*(n-1)]; faces quadrilatérales (ou deux fois plus de faces triangulaires avec l'option #strong['triangles'];).

 Appelée avec une seule sortie, le résultat est une structure qui peut être passée directement à #strong[patch]; ; avec plusieurs sorties, les faces, les sommets et les données de couleur sont renvoyés séparément.


== Exemple

``````matlab
f = figure();
colormap(jet);
patch(surf2patch(peaks(20)), 'FaceColor', 'interp', 'EdgeColor', 'none');
view(3);
axis equal
``````


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
