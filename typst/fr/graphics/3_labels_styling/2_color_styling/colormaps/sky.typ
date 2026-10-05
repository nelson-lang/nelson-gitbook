#import "../../../nelson_help.typ": *

= sky <graphics:3_labels_styling.2_color_styling.colormaps.sky>

Table de couleurs 'sky'.

== Syntaxe

- #raw("c = sky");
- #raw("c = sky(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Table de couleurs 'sky'.

== Description

#strong[sky]; retourne la table de couleurs avec des couleurs de ciel.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('sky');
``````


#align(center)[#image("sky.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
