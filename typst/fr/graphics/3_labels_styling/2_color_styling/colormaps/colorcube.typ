#import "../../../nelson_help.typ": *

= colorcube <graphics:3_labels_styling.2_color_styling.colormaps.colorcube>

Tableau de colormap RGB en cube ameliore.

== Syntaxe

- #raw("c = colorcube");
- #raw("c = colorcube(m)");

== Argument d'entrée

/ m: une valeur entiere scalaire : Nombre de couleurs (256 par defaut).

== Argument de sortie

/ c: Tableau de colormap RGB en cube ameliore.

== Description

#strong[colorcube]; retourne une colormap construite avec un cube RGB, des rampes de couleurs pures, le noir et des niveaux de gris.


== Exemple

``````matlab
f = figure();
surf(peaks);
colormap('colorcube');
``````


#align(center)[#image("colorcube.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
