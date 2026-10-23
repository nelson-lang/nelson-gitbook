#import "../../nelson_help.typ": *

= camdolly <graphics:3_labels_styling.3_interactions_camera_lighting.camdolly>

Déplace la position et la cible de la caméra.

== Syntaxe

- #raw("camdolly(dx, dy, dz)");
- #raw("camdolly(dx, dy, dz, coordsys)");
- #raw("camdolly(dx, dy, dz, coordsys, units)");
- #raw("camdolly(ax, ...)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ dx, dy, dz: Le déplacement le long de chaque axe du système de coordonnées choisi.
/ coordsys: 'camera' (par défaut : dx vers la droite, dy vers le haut, dz le long de la direction de visée) ou 'data' (axes du monde).
/ units: 'normalized' (par défaut : relatif à la distance caméra-cible) ou 'data'.

== Description

#strong[camdolly]; déplace la position et la cible de la caméra de la même quantité, faisant glisser la vue à travers la scène.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camdolly(0.2, 0, 0);
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camorbit>)[camorbit];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camzoom>)[camzoom];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
