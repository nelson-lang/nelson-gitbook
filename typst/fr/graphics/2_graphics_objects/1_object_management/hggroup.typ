#import "../../nelson_help.typ": *

= hggroup <graphics:2_graphics_objects.1_object_management.hggroup>

Créer un objet groupe.

== Syntaxe

- #raw("h = hggroup()");
- #raw("h = hggroup(..., propertyName, propertyValue, ...)");
- #raw("h = hggroup(ax, ...)");

== Argument d'entrée

/ ax: Objet graphique : axes ou hggroup.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ p: Un objet graphique de type : hggroup

== Description

#strong[hggroup]; crée un objet hggroup comme enfant des axes courants et retourne son handle, h.

 L'objet #strong[hggroup]; est utilisé pour regrouper des objets graphiques, tels que des lignes, des patches et du texte, afin qu'ils puissent être manipulés ensemble.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.hggroup.properties>)[proprietes de hggroup]; pour la liste complete des proprietes.


== Exemple

``````matlab
figure();
ax = gca();
g = hggroup();
h = text(0.1, 0.1, 'tttt', 'Parent', g);
h.Parent
h.Visible
h.Visible = 'off';

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.hggroup.properties>)[proprietes de hggroup];, #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
