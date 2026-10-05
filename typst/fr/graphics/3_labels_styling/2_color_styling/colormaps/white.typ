#import "../../../nelson_help.typ": *

= white <graphics:3_labels_styling.2_color_styling.colormaps.white>

tableau de colormap blanc.

== Syntaxe

- #raw("c = white");
- #raw("c = white(m)");

== Argument d'entrée

/ m: une valeur entière scalaire : Nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Tableau de colormap blanc.

== Description

#strong[white]; retourne la colormap avec des couleurs blanches.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('white');
``````


#align(center)[#image("white.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
