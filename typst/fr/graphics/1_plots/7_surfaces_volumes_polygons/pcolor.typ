#import "../../nelson_help.typ": *

= pcolor <graphics:1_plots.7_surfaces_volumes_polygons.pcolor>

Graphique en pseudo-couleurs.

== Syntaxe

- #raw("pcolor(C)");
- #raw("pcolor(X, Y, C)");
- #raw("pcolor(parent, ...)");
- #raw("go = pcolor(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

== Argument de sortie

/ go: Objet graphique : type surface.

== Description

#strong[pcolor(C)]; crée un graphique en pseudo-couleurs des données de la matrice #strong[C];, où chaque cellule ou « face » du graphique est colorée selon la valeur correspondante dans la matrice.

 La couleur de chaque face est déterminée par une palette de couleurs (colormap), qui associe les valeurs des données à des couleurs.


== Exemples

``````matlab
X = linspace(0, 2*pi, 100);
Y = linspace(0, 2*pi, 100);
Z = sin(X' * Y);
f = figure()
pcolor(X, Y, Z)
``````


#align(center)[#image("pcolor_1.svg")]
``````matlab
f = figure();
rng('default');
ax1 = subplot(1, 2, 1);
C1 = rand(20, 10);
pcolor(ax1, C1)
ax2 = subplot(1, 2, 2);
C2 = rand(50, 10);
pcolor(ax2, C2)
``````


#align(center)[#image("pcolor_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
