#import "../../nelson_help.typ": *

= campos <graphics:3_labels_styling.3_interactions_camera_lighting.campos>

Définit ou interroge la position de la caméra.

== Syntaxe

- #raw("campos");
- #raw("pos = campos");
- #raw("campos([x y z])");
- #raw("campos('auto')");
- #raw("campos('manual')");
- #raw("mode = campos('mode')");
- #raw("campos(ax, ...)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ \[x y z\]: La position de la caméra, spécifiée comme un vecteur à trois éléments.

== Argument de sortie

/ pos: La position actuelle de la caméra, un vecteur à trois éléments.

== Description

#strong[campos]; définit ou interroge la propriété #strong[CameraPosition]; d'un axes.

 Spécifier une position bascule #strong[CameraPositionMode]; en #strong[manual];.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camtarget([0 0 0]);
campos([80 -120 90]);
camva(35);
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camtarget>)[camtarget];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camva>)[camva];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camproj>)[camproj];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
