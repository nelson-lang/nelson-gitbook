#import "../../../nelson_help.typ": *

= copper <graphics:3_labels_styling.2_color_styling.colormaps.copper>

Palette de couleurs copper.

== Syntaxe

- #raw("c = copper");
- #raw("c = copper(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs copper.

== Description

#strong[copper]; retourne la palette de couleurs copper.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('copper');
``````


#align(center)[#image("copper.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
