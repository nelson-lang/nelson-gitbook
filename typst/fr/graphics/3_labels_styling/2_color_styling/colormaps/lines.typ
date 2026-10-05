#import "../../../nelson_help.typ": *

= lines <graphics:3_labels_styling.2_color_styling.colormaps.lines>

Tableau de colormap base sur l'ordre des couleurs de lignes.

== Syntaxe

- #raw("c = lines");
- #raw("c = lines(m)");

== Argument d'entrée

/ m: une valeur entiere scalaire : Nombre de couleurs (256 par defaut).

== Argument de sortie

/ c: Tableau de colormap base sur l'ordre des couleurs de lignes.

== Description

#strong[lines]; retourne une colormap basee sur l'ordre de couleurs par defaut des axes.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('lines');
``````


#align(center)[#image("lines.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
