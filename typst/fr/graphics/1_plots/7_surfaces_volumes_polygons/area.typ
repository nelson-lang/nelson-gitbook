#import "../../nelson_help.typ": *

= area <graphics:1_plots.7_surfaces_volumes_polygons.area>

Creer des graphes d'aires.

== Syntaxe

- #raw("area(Y)");
- #raw("area(X, Y)");
- #raw("area(..., basevalue)");
- #raw("area(..., propertyName, propertyValue)");
- #raw("area(ax, ...)");
- #raw("go = area(...)");

== Argument d'entrée

/ X: Coordonnees x.
/ Y: Donnees d'aire. Les colonnes d'une matrice creent des objets area empiles.
/ basevalue: Valeur de base. Par defaut : 0.

== Argument de sortie

/ go: Handles graphiques de type area.

== Description

#strong[area]; cree un objet graphique area natif par colonne de donnees. Les objets area utilisent un rendu par polygones remplis et acceptent les proprietes de face, bord, ligne, alpha, valeur de base et interaction.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.area.properties>)[proprietes de area]; pour la liste complete des proprietes.


== Exemple

``````matlab
y = [1 2; 3 1; 2 4];
area(y);
``````


#align(center)[#image("area_1.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.area.properties>)[proprietes de area];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.

// Auteur: Allan CORNET
