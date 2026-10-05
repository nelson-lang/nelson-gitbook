#import "../../nelson_help.typ": *

= is2D <graphics:2_graphics_objects.1_object_management.is2D>

Vérifie si ax est un axe 2D polaire ou cartésien.

== Syntaxe

- #raw("tf = is2D(ax)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : axe.

== Argument de sortie

/ tf: Un scalaire logique.

== Description

#strong[is2D]; vérifie si #strong[ax]; est un axe 2D polaire ou cartésien.


== Exemple

``````matlab
f = figure();
ax = gca();
plot(ax, 1:10, sin(1:10));
assert_istrue(is2D(ax));
f = figure();
surf(peaks);
ax = gca();
assert_isfalse(is2D(ax));
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
