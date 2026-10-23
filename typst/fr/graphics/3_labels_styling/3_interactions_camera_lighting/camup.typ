#import "../../nelson_help.typ": *

= camup <graphics:3_labels_styling.3_interactions_camera_lighting.camup>

Définit ou interroge le vecteur vertical de la caméra.

== Syntaxe

- #raw("camup");
- #raw("u = camup");
- #raw("camup([x y z])");
- #raw("camup('auto')");
- #raw("camup('manual')");
- #raw("mode = camup('mode')");
- #raw("camup(ax, ...)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ \[x y z\]: Le vecteur vertical de la caméra, spécifié comme un vecteur à trois éléments.

== Argument de sortie

/ u: Le vecteur vertical actuel de la caméra, un vecteur à trois éléments.

== Description

#strong[camup]; définit ou interroge la propriété #strong[CameraUpVector]; d'un axes.

 Spécifier un vecteur vertical bascule #strong[CameraUpVectorMode]; en #strong[manual];.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camup([0 0 1]);
u = camup()
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camroll>)[camroll];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
