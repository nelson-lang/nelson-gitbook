#import "../../nelson_help.typ": *

= view <graphics:3_labels_styling.3_interactions_camera_lighting.view>

Ligne de visée de la caméra.

== Syntaxe

- #raw("view(az, el)");
- #raw("view([az, el])");
- #raw("view([x, y, z])");
- #raw("view(dim)");
- #raw("view(ax, ...)");
- #raw("[az, el] = view(...)");

== Argument d'entrée

/ dim: Dimensions : 2 équivaut à view(0, 90) ou 3 équivaut à view(-37.5, 30).
/ az: Azimut : scalaire
/ el: Élévation : scalaire
/ ax: Un objet graphique scalaire : conteneur parent, spécifié comme axes.

== Description

#strong[view]; définit la vue dans un tracé.


== Exemples

``````matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
``````


#align(center)[#image("view_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(90, 0)
``````


#align(center)[#image("view_2.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(2)
``````


#align(center)[#image("view_3.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [Version initiale],
  [1.2.0], [Azimut et élévation comme arguments de sortie.],
)

// Auteur: Allan CORNET
