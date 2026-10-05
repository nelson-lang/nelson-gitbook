#import "../../nelson_help.typ": *

= figure <graphics:2_graphics_objects.1_object_management.figure>

Crée une fenêtre figure.

== Syntaxe

- #raw("f = figure()");
- #raw("f = figure(ID)");
- #raw("f = figure(H)");
- #raw("f = figure(propertyName, propertyValue)");
- #raw("f = figure(ID, propertyName, propertyValue)");
- #raw("f = figure(H, propertyName, propertyValue)");

== Argument d'entrée

/ ID: Un entier scalaire : recherche ou crée avec cet ID.
/ H: Un objet graphique scalaire sur une figure existante.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ f: Un objet graphique : handle de figure.

== Description

#strong[figure]; crée une figure.

 Un clic sur une figure la définit automatiquement comme figure courante.

 

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.figure.properties>)[proprietes de figure]; pour la liste complete des proprietes.


== Exemple

``````matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.figure.properties>)[proprietes de figure];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.close>)[close];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.2.0], [Un clic sur une figure la définit automatiquement comme figure courante.],
  [1.7.0], [Ajout des callbacks CreateFcn, DeleteFcn, CloseRequestFcn, KeyPressFcn, KeyReleaseFcn, ButtonDownFcn.],
  [--], [Ajout de la propriété BeingDeleted.],
  [1.8.0], [Ajout de la propriété Resize.],
  [1.13.0], [Ajout de la propriété DevicePixelRatio.],
  [1.14.0], [Ajout de la propriété WindowState.],
  [--], [Mise a jour de la documentation des proprietes de figure.],
)

// Auteur: Allan CORNET
