#import "../../../nelson_help.typ": *

= flag <graphics:3_labels_styling.2_color_styling.colormaps.flag>

Palette de couleurs flag.

== Syntaxe

- #raw("c = flag");
- #raw("c = flag(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs flag.

== Description

#strong[flag]; retourne la palette de couleurs flag.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('flag');
``````


#align(center)[#image("flag.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
