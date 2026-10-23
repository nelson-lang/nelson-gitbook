#import "../../nelson_help.typ": *

= camzoom <graphics:3_labels_styling.3_interactions_camera_lighting.camzoom>

Zoome la caméra en avant ou en arrière.

== Syntaxe

- #raw("camzoom(zf)");
- #raw("camzoom(ax, zf)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ zf: Le facteur de zoom, un scalaire réel positif. Une valeur supérieure à 1 zoome en avant, une valeur inférieure à 1 zoome en arrière.

== Description

#strong[camzoom]; zoome la caméra en divisant la tangente de la moitié de #strong[CameraViewAngle]; par le facteur de zoom, la scène apparaît donc #strong[zf]; fois plus grande, et bascule #strong[CameraViewAngleMode]; en #strong[manual];.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camzoom(2);
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camva>)[camva];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camdolly>)[camdolly];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
