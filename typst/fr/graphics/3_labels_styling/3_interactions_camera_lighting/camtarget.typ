#import "../../nelson_help.typ": *

= camtarget <graphics:3_labels_styling.3_interactions_camera_lighting.camtarget>

Définit ou interroge la cible de la caméra.

== Syntaxe

- #raw("camtarget");
- #raw("t = camtarget");
- #raw("camtarget([x y z])");
- #raw("camtarget('auto')");
- #raw("camtarget('manual')");
- #raw("mode = camtarget('mode')");
- #raw("camtarget(ax, ...)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ \[x y z\]: Le point visé par la caméra, spécifié comme un vecteur à trois éléments.

== Argument de sortie

/ t: La cible actuelle de la caméra, un vecteur à trois éléments.

== Description

#strong[camtarget]; définit ou interroge la propriété #strong[CameraTarget]; d'un axes.

 Spécifier une cible bascule #strong[CameraTargetMode]; en #strong[manual];.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camtarget([20 20 0]);
t = camtarget()
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camup>)[camup];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camlookat>)[camlookat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
