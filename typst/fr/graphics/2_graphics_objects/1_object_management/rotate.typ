#import "../../nelson_help.typ": *

= rotate <graphics:2_graphics_objects.1_object_management.rotate>

Fait tourner des objets graphiques autour d'un axe.

== Syntaxe

- #raw("rotate(h, direction, alpha)");
- #raw("rotate(h, direction, alpha, origin)");

== Argument d'entrée

/ h: un objet graphique ou un tableau d'objets avec XData\/YData(\/ZData).
/ direction: l'axe de rotation : un vecteur à trois éléments \[x y z\], ou \[azimut élévation\] à deux éléments en degrés.
/ alpha: l'angle de rotation en degrés.
/ origin: le centre de rotation (par défaut : le centre de la boîte des axes).

== Description

#strong[rotate]; fait tourner les objets graphiques #strong[h]; de #strong[alpha]; degrés autour de l'axe donné par #strong[direction];, passant par #strong[origin];. Les données de l'objet sont transformées sur place.


== Exemple

``````matlab
f = figure();
s = surf(peaks(20));
rotate(s, [0 0 1], 45);
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
