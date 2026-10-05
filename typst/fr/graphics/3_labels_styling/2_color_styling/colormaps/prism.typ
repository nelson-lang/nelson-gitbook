#import "../../../nelson_help.typ": *

= prism <graphics:3_labels_styling.2_color_styling.colormaps.prism>

Palette de couleurs Prism.

== Syntaxe

- #raw("c = prism");
- #raw("c = prism(m)");

== Argument d'entrée

/ m: Valeur entière scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs Prism.

== Description

#strong[prism]; retourne la palette de couleurs Prism.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('prism');
``````


#align(center)[#image("prism.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
