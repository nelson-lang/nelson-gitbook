#import "../../nelson_help.typ": *

= ribbon <graphics:1_plots.7_surfaces_volumes_polygons.ribbon>

Graphique en ruban.

== Syntaxe

- #raw("ribbon(Z)");
- #raw("ribbon(Y, Z)");
- #raw("ribbon(Y, Z, width)");
- #raw("ribbon(ax, ...)");
- #raw("s = ribbon(...)");

== Argument d'entrée

/ Z: Coordonnées z : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ width: Largeur du ruban.
/ ax: Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

== Argument de sortie

/ s: Vecteur d'objets surface.

== Description

#strong[ribbon(Z)]; trace un graphique en ruban 3D basé sur la matrice Z, avec les valeurs de Y définissant l'axe des ordonnées du graphique.

 #strong[ribbon(Y, Z)]; trace un graphique en ruban 3D basé sur la matrice Y, avec les valeurs de Z définissant l'axe des z du graphique.

 #strong[s \= ribbon(...)]; retourne un vecteur d'objets surface.

 Remarque : Y et Z doivent avoir la même taille.


== Exemple

``````matlab
f = figure();
Y = peaks(25);
ribbon(Y)

``````


#align(center)[#image("ribbon_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
