#import "../../../nelson_help.typ": *

= nebula <graphics:3_labels_styling.2_color_styling.colormaps.nebula>

Palette de couleurs Nebula.

== Syntaxe

- #raw("c = nebula");
- #raw("c = nebula(m)");

== Argument d'entrée

/ m: Valeur entière scalaire : nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Palette de couleurs Nebula.

== Description

#strong[nebula]; retourne la palette de couleurs Nebula.


== Exemple

``````matlab
f = figure();
n = 256;
cmap = nebula(n);
colormap(cmap);
imagesc(peaks(100));
colorbar;
title(['Nebula Colormap with ', num2str(n), ' Colors']);
``````


#align(center)[#image("nebula.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
