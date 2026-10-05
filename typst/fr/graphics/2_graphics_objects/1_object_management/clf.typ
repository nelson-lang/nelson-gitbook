#import "../../nelson_help.typ": *

= clf <graphics:2_graphics_objects.1_object_management.clf>

Efface la figure.

== Syntaxe

- #raw("clf");
- #raw("clf(f)");
- #raw("F = clf(...)");

== Argument d'entrée

/ f: un objet graphique scalaire sur une figure existante.

== Argument de sortie

/ F: un objet graphique : objet figure utilisé.

== Description

#strong[clf]; efface la figure courante.


== Exemple

``````matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
clf
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.cla>)[cla];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
