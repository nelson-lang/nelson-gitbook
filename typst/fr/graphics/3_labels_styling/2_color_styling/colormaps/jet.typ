#import "../../../nelson_help.typ": *

= jet <graphics:3_labels_styling.2_color_styling.colormaps.jet>

Tableau de palette de couleurs jet.

== Syntaxe

- #raw("c = jet");
- #raw("c = jet(m)");

== Argument d'entrée

/ m: Un entier scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Tableau de palette de couleurs jet.

== Description

#strong[jet]; retourne la palette de couleurs jet.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('jet');
``````


#align(center)[#image("jet.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
