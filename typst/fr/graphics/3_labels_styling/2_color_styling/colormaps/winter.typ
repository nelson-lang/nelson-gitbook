#import "../../../nelson_help.typ": *

= winter <graphics:3_labels_styling.2_color_styling.colormaps.winter>

Tableau de colormap hiver.

== Syntaxe

- #raw("c = winter");
- #raw("c = winter(m)");

== Argument d'entrée

/ m: une valeur entière scalaire : Nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Tableau de colormap hiver.

== Description

#strong[winter]; retourne la colormap avec des couleurs d'hiver.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('winter');
``````


#align(center)[#image("winter.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
