#import "../../nelson_help.typ": *

= plot3 <graphics:1_plots.1_line_plots.plot3>

Tracé de courbe 3D.

== Syntaxe

- #raw("plot3(X1, Y1, Z1, ...)");
- #raw("plot3(X1, Y1, Z1, LineSpec, ...)");
- #raw("plot3(..., propertyName, propertyValue, ...)");
- #raw("plot3(ax, ...)");
- #raw("go = plot3(...)");

== Argument d'entrée

/ X1: Coordonnées x : vecteur ou matrice.
/ Y1: Coordonnées y : vecteur ou matrice.
/ Z1: Coordonnées z : vecteur ou matrice.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caractères ou chaîne scalaire.
/ ax: Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.
/ propertyName: Chaine scalaire ou vecteur ligne de caracteres. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line]; pour la liste des proprietes.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Objet graphique : type ligne.

== Description

#strong[plot3(X1, Y1, Z1, ...)]; trace une ou plusieurs courbes dans l'espace tridimensionnel.

 #strong[go \= plot3(...)]; retourne un vecteur colonne d'objets graphiques de type ligne.

 

 Voir #strong[line]; ou#strong[plot]; pour plus d'informations sur les propriétés.


== Exemples

``````matlab
f  = figure();
t = 0:pi/50:10*pi;
L = plot3(sin(t), cos(t), t);
axis square
``````


#align(center)[#image("plot3_1.svg")]
``````matlab
f  = figure();
t = 0:0.1:10*pi;
r = linspace (0, 1, length(t));
z = linspace (0, 1, length(t));
h = plot3 (r .* cos (t), r .* sin (t), z);
ylabel ('r .* sin (t)');
xlabel ('r .* cos (t)');
zlabel ('z');
title ('plot3 display of 3-D helix');
axis square
``````


#align(center)[#image("plot3_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
