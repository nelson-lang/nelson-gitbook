#import "../../../nelson_help.typ": *

= spring <graphics:3_labels_styling.2_color_styling.colormaps.spring>

Table de couleurs 'spring'.

== Syntaxe

- #raw("c = spring");
- #raw("c = spring(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Table de couleurs 'spring'.

== Description

#strong[spring]; retourne la table de couleurs avec des couleurs de printemps.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('spring');
``````


#align(center)[#image("spring.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
