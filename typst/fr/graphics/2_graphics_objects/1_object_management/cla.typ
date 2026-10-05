#import "../../nelson_help.typ": *

= cla <graphics:2_graphics_objects.1_object_management.cla>

Efface les axes.

== Syntaxe

- #raw("cla");
- #raw("cla(ax)");
- #raw("ca = cla(...)");

== Argument d'entrée

/ ax: un objet graphique scalaire sur des axes existants.

== Argument de sortie

/ ca: un objet graphique : objet axes utilisé.

== Description

#strong[cla]; efface les axes courants.


== Exemple

``````matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
cla
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];, #nlink(<graphics:2_graphics_objects.1_object_management.clf>)[clf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
