#import "../../../nelson_help.typ": *

= turbo <graphics:3_labels_styling.2_color_styling.colormaps.turbo>

Tableau de couleurs Turbo.

== Syntaxe

- #raw("c = turbo");
- #raw("c = turbo(m)");

== Argument d'entrée

/ m: Une valeur entière scalaire : Nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Tableau de couleurs Turbo.

== Description

#strong[turbo]; retourne la carte de couleurs avec les couleurs Turbo.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('turbo');
``````


#align(center)[#image("turbo.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [Version initiale],
)

// Auteur: Allan CORNET
