#import "../../nelson_help.typ": *

= axes <graphics:2_graphics_objects.1_object_management.axes>

Créer des axes cartésiens.

== Syntaxe

- #raw("ax = axes()");
- #raw("ax = axes(parent)");
- #raw("ax = axes(propertyName, propertyValue)");
- #raw("ax = axes(parent, propertyName, propertyValue)");
- #raw("axes(cax)");

== Argument d'entrée

/ parent: une valeur scalaire d'objet graphique : conteneur parent, spécifié comme une figure.
/ cax: axes à rendre courant.
/ propertyName: une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: une valeur.

== Argument de sortie

/ ax: un objet graphique : type axes.

== Description

#strong[axes]; crée des axes dans la figure courante et les définit comme axes courants.

 #strong[axes(cax)]; rend les axes courants.

 Un clic sur un axe le rend automatiquement courant.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[proprietes de axes]; pour la liste complete des proprietes.


== Exemple

``````matlab
f = figure();
ax1 = axes('Position', [0.1 0.1 0.7 0.7]);
ax2 = axes('Position', [0.65 0.65 0.28 0.28]);
x = linspace(0,10);
y1 = sin(x);
y2 = cos(x);
plot(ax1, x, y1);
plot(ax2, x, y2);
``````


#align(center)[#image("axes.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[proprietes de axes];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.close>)[close];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.2.0], [Un clic sur un axe le rend automatiquement courant.],
  [--], [Propriétés GridAlpha, GridColor pour Axes.],
  [1.7.0], [Ajout des callbacks CreateFcn, DeleteFcn.],
  [--], [Ajout de la propriété BeingDeleted.],
  [--], [Mise a jour de la documentation des proprietes d'axes.],
)

// Auteur: Allan CORNET
