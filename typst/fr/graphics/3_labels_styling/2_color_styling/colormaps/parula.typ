#import "../../../nelson_help.typ": *

= parula <graphics:3_labels_styling.2_color_styling.colormaps.parula>

Palette de couleurs Parula.

== Syntaxe

- #raw("c = parula");
- #raw("c = parula(m)");

== Argument d'entrée

/ m: Valeur entière scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs Parula.

== Description

#strong[parula]; retourne la palette de couleurs Parula.

 #strong[parula]; est la palette de couleurs par défaut.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('parula');
``````


#align(center)[#image("parula.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
