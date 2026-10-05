#import "../../../nelson_help.typ": *

= pink <graphics:3_labels_styling.2_color_styling.colormaps.pink>

Palette de couleurs Pink.

== Syntaxe

- #raw("c = pink");
- #raw("c = pink(m)");

== Argument d'entrée

/ m: Valeur entière scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs Pink.

== Description

#strong[pink]; retourne la palette de couleurs Pink.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('pink');
``````


#align(center)[#image("pink.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
