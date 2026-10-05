#import "../../../nelson_help.typ": *

= cool <graphics:3_labels_styling.2_color_styling.colormaps.cool>

Palette de couleurs cool.

== Syntaxe

- #raw("c = cool");
- #raw("c = cool(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs cool.

== Description

#strong[cool]; retourne la palette de couleurs cool.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('cool');
``````


#align(center)[#image("cool.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
