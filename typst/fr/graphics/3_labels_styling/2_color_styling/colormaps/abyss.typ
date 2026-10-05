#import "../../../nelson_help.typ": *

= abyss <graphics:3_labels_styling.2_color_styling.colormaps.abyss>

Palette de couleurs abyss.

== Syntaxe

- #raw("c = abyss");
- #raw("c = abyss(m)");

== Argument d'entrée

/ m: une valeur entière scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs abyss.

== Description

#strong[abyss]; retourne la palette de couleurs abyss.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('abyss');
``````


#align(center)[#image("abyss.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
