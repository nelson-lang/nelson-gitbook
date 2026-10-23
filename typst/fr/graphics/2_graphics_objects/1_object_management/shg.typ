#import "../../nelson_help.typ": *

= shg <graphics:2_graphics_objects.1_object_management.shg>

Affiche la fenêtre graphique courante.

== Syntaxe

- #raw("shg");
- #raw("shg()");

== Description

#strong[shg]; met la figure courante au premier plan, en créant une si aucune n'existe. C'est équivalent à #strong[figure(gcf)];.


== Exemple

``````matlab
f = figure();
plot(1:10);
shg
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
