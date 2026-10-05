#import "../../nelson_help.typ": *

= hold <graphics:2_graphics_objects.1_object_management.hold>

Conserver le tracé courant lors de l'ajout de nouveaux tracés.

== Syntaxe

- #raw("hold('on')");
- #raw("hold('off')");
- #raw("hold('all')");
- #raw("hold()");
- #raw("hold(ax, ...)");

== Argument d'entrée

/ 'on': active le mode hold.
/ 'off': désactive le mode hold.
/ 'all': équivalent à hold on.
/ ax: Axes cibles : axes.

== Argument de sortie

/ ax: Un objet graphique : type axes.

== Description

#strong[hold]; permet de construire une séquence de tracés de façon incrémentale.


== Exemple

``````matlab
f = figure();
x = linspace(-pi, pi);
y1 = cos(x);
plot(x, y1)
hold on
y2 = sin(x);
plot(x, y2)
hold off

``````


#align(center)[#image("hold.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.ishold>)[ishold];, #nlink(<graphics:2_graphics_objects.1_object_management.newplot>)[newplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
