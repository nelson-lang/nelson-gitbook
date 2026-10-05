#import "../../nelson_help.typ": *

= fill3 <graphics:1_plots.7_surfaces_volumes_polygons.fill3>

Creer des patchs 3-D remplis.

== Syntaxe

- #raw("fill3(X, Y, Z, C)");
- #raw("fill3(X1, Y1, Z1, C1, ..., Xn, Yn, Zn, Cn)");
- #raw("fill3(..., propertyName, propertyValue)");
- #raw("fill3(ax, ...)");
- #raw("go = fill3(...)");

== Argument d'entrée

/ X: Coordonnees x : vecteur ou matrice.
/ Y: Coordonnees y : vecteur ou matrice.
/ Z: Coordonnees z : vecteur ou matrice.
/ C: Donnees de couleur ou specification de couleur.

== Argument de sortie

/ go: Handles graphiques de type patch.

== Description

#strong[fill3]; cree des polygones remplis en coordonnees 3-D. Chaque groupe d'entrees cree un ou plusieurs objets patch et accepte les proprietes nom-valeur de patch.


== Exemple

``````matlab
x = [0 1 0];
y = [0 0 1];
z = [0 1 0];
fill3(x, y, z, 'red');
view(3)
``````


#align(center)[#image("fill3_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.

// Auteur: Allan CORNET
