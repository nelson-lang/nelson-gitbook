#import "../../nelson_help.typ": *

= enableDefaultInteractivity <graphics:3_labels_styling.3_interactions_camera_lighting.enableDefaultInteractivity>

Active les interactions integrees des axes.

== Syntaxe

- #raw("enableDefaultInteractivity(ax)");

== Argument d'entrée

/ ax: un objet graphique scalaire : un axes.

== Description

#strong[enableDefaultInteractivity(ax)]; reactive les interactions integrees des axes #strong[ax]; apres qu'elles ont ete desactivees avec #strong[disableDefaultInteractivity];.

 Avec les interactions integrees activees, glisser le curseur sur les axes deplace le contenu (ou le fait pivoter pour une vue 3-D) et la molette zoome.

 C'est l'etat par defaut d'un nouvel axes.


== Exemple

``````matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);
enableDefaultInteractivity(ax);

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.disableDefaultInteractivity>)[disableDefaultInteractivity];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
