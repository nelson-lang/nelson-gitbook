#import "../../nelson_help.typ": *

= camlookat <graphics:3_labels_styling.3_interactions_camera_lighting.camlookat>

Pointe la caméra vers un objet.

== Syntaxe

- #raw("camlookat");
- #raw("camlookat(obj)");
- #raw("camlookat(ax)");

== Argument d'entrée

/ obj: Un objet graphique à regarder (par exemple une surface ou une ligne).
/ ax: Des axes dont le contenu est cadré.

== Description

#strong[camlookat]; définit la cible de la caméra au centre de l'objet et déplace la caméra le long de la direction de visée actuelle de sorte que l'objet remplisse la vue. Sans argument, elle cadre les axes courants.


== Exemple

``````matlab
f = figure();
[x, y, z] = sphere(20);
s = surf(x + 5, y - 3, z);
axis equal;
camlookat(s);
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camtarget>)[camtarget];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
