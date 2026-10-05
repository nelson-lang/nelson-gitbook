#import "../../nelson_help.typ": *

= meshz <graphics:1_plots.7_surfaces_volumes_polygons.meshz>

Tracé de surface en maillage (mesh) avec rideau.

== Syntaxe

- #raw("meshz(X, Y, Z)");
- #raw("meshz(Z)");
- #raw("meshz(Z, C)");
- #raw("meshz(X, Y, Z, C)");
- #raw("meshz(parent, ...)");
- #raw("meshz(..., propertyName, propertyValue)");
- #raw("go = meshz(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ Z: Coordonnées z : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type surface.

== Description

#strong[meshz]; crée un tracé de surface 3D avec un maillage (wireframe) au-dessus.

 La fonction prend les mêmes arguments d'entrée que la fonction #strong[mesh];.


== Exemple

``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
s = meshz(X,Y,Z)
``````


#align(center)[#image("meshz_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
