#import "../../nelson_help.typ": *

= newplot <graphics:2_graphics_objects.1_object_management.newplot>

Préparer la création d'un nouveau graphique.

== Syntaxe

- #raw("go = newplot()");
- #raw("go = newplot(ax)");

== Argument d'entrée

/ ax: Figure ou axes spécifiés plutôt que la figure et les axes courants.

== Argument de sortie

/ go: Objet graphique : type axes.

== Description

#strong[newplot]; prépare une figure et des axes pour les commandes graphiques.


== Exemple

``````matlab
h = newplot()
``````


== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
