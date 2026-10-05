#import "../../../nelson_help.typ": *

= gray <graphics:3_labels_styling.2_color_styling.colormaps.gray>

Palette de couleurs gray.

== Syntaxe

- #raw("c = gray");
- #raw("c = gray(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs gray.

== Description

#strong[gray]; retourne la palette de couleurs gray.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('gray');
``````


#align(center)[#image("gray.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
