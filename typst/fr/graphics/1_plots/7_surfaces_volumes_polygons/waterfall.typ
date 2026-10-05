#import "../../nelson_help.typ": *

= waterfall <graphics:1_plots.7_surfaces_volumes_polygons.waterfall>

graphique en cascade.

== Syntaxe

- #raw("waterfall(X, Y, Z)");
- #raw("waterfall(Z)");
- #raw("waterfall(Z, C)");
- #raw("waterfall(X, Y, Z, C)");
- #raw("waterfall(parent, ...)");
- #raw("waterfall(..., propertyName, propertyValue)");
- #raw("go = waterfall(...)");

== Argument d'entrée

/ X: coordonnées x : vecteur ou matrice.
/ Y: coordonnées y : vecteur ou matrice.
/ Z: coordonnées z : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.
/ propertyName: une chaîne scalaire ou un vecteur de caractères en ligne.
/ propertyValue: une valeur.

== Argument de sortie

/ go: un objet graphique : type surface.

== Description

#strong[waterfall]; crée un graphique en cascade, qui est un graphique en maillage avec un rideau partiel le long de la dimension y.

 Cela donne un effet de 'cascade'.

 La fonction prend les mêmes arguments d'entrée que la fonction#strong[mesh];.


== Exemples

``````matlab
f = figure();
Z = peaks();
waterfall(Z);
title ("fonction waterfall");

``````


#align(center)[#image("waterfall_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
p = waterfall(X, Y, Z);

``````


#align(center)[#image("waterfall_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
