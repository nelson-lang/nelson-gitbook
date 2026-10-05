#import "../../nelson_help.typ": *

= grid <graphics:3_labels_styling.1_axes_appearance.grid>

Afficher ou masquer les lignes de grille des axes.

== Syntaxe

- #raw("grid");
- #raw("grid('on')");
- #raw("grid('off')");
- #raw("grid('minor')");
- #raw("grid(ax, ...)");

== Argument d'entrée

/ 'on': affiche la grille principale.
/ 'off': supprime toutes les lignes de grille.
/ 'minor': active ou désactive la visibilité des lignes de grille mineures.
/ ax: Objet cible : axes.

== Description

#strong[grid()]; active ou désactive la visibilité des lignes de grille principales.


== Exemple

``````matlab
f = figure();
x = linspace(0, 20);
y = cos(x);
plot(x, y)
grid on
``````


#align(center)[#image("grid.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
