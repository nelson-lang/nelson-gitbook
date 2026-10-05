#import "../../../nelson_help.typ": *

= hsv <graphics:3_labels_styling.2_color_styling.colormaps.hsv>

Tableau de colormap teinte-saturation-valeur.

== Syntaxe

- #raw("c = hsv");
- #raw("c = hsv(m)");

== Argument d'entrée

/ m: une valeur entiere scalaire : Nombre de couleurs (256 par defaut).

== Argument de sortie

/ c: Tableau de colormap teinte-saturation-valeur.

== Description

#strong[hsv]; retourne une colormap qui fait varier la teinte autour du cercle des couleurs.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('hsv');
``````


#align(center)[#image("hsv.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
