#import "../../nelson_help.typ": *

= disableDefaultInteractivity <graphics:3_labels_styling.3_interactions_camera_lighting.disableDefaultInteractivity>

Desactive les interactions integrees des axes.

== Syntaxe

- #raw("disableDefaultInteractivity(ax)");

== Argument d'entrée

/ ax: un objet graphique scalaire : un axes.

== Description

Par defaut, les axes ont des interactions integrees activees : glisser le curseur sur les axes deplace le contenu (ou le fait pivoter pour une vue 3-D), et la molette zoome.

 #strong[disableDefaultInteractivity(ax)]; desactive ces interactions integrees pour les axes #strong[ax];.

 La barre d'outils des axes et les modes pan, zoom et rotation actives depuis la barre d'outils ou par programme ne sont pas affectes.

 Utilisez #strong[enableDefaultInteractivity]; pour reactiver les interactions integrees.


== Exemple

``````matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.enableDefaultInteractivity>)[enableDefaultInteractivity];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
