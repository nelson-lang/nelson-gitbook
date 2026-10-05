#import "../../../nelson_help.typ": *

= bone <graphics:3_labels_styling.2_color_styling.colormaps.bone>

Palette de couleurs bone.

== Syntaxe

- #raw("c = bone");
- #raw("c = bone(m)");

== Argument d'entrée

/ m: une valeur entière scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs bone.

== Description

#strong[bone]; retourne la palette de couleurs bone.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('bone');
``````


#align(center)[#image("bone.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
