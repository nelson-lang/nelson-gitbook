#import "../../../nelson_help.typ": *

= viridis <graphics:3_labels_styling.2_color_styling.colormaps.viridis>

Tableau de couleurs Viridis.

== Syntaxe

- #raw("c = viridis");
- #raw("c = viridis(m)");

== Argument d'entrée

/ m: Une valeur entière scalaire : Nombre de couleurs (256 par défaut).

== Argument de sortie

/ c: Tableau de couleurs Viridis.

== Description

#strong[viridis]; retourne la carte de couleurs avec les couleurs Viridis.


== Bibliographie

Carte de couleurs créée par Stéfan van der Walt et Nathaniel Smith

== Exemple

``````matlab
f = figure();
surf(peaks);
view(2);
colormap('viridis');
``````


#align(center)[#image("viridis.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [Version initiale],
)

// Auteur: Allan CORNET
