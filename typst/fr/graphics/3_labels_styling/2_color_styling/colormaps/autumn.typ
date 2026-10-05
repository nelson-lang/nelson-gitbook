#import "../../../nelson_help.typ": *

= autumn <graphics:3_labels_styling.2_color_styling.colormaps.autumn>

Palette de couleurs autumn.

== Syntaxe

- #raw("c = autumn");
- #raw("c = autumn(m)");

== Argument d'entrée

/ m: une valeur entière scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs autumn.

== Description

#strong[autumn]; retourne la palette de couleurs autumn.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('autumn');
``````


#align(center)[#image("autumn.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
