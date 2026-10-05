#import "../../../nelson_help.typ": *

= hot <graphics:3_labels_styling.2_color_styling.colormaps.hot>

Palette de couleurs hot.

== Syntaxe

- #raw("c = hot");
- #raw("c = hot(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs hot.

== Description

#strong[hot]; retourne la palette de couleurs hot.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('hot');
``````


#align(center)[#image("hot.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
