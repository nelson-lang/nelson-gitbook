#import "../../nelson_help.typ": *

= groot <graphics:2_graphics_objects.1_object_management.groot>

Objet racine graphique.

== Syntaxe

- #raw("g = groot()");

== Argument de sortie

/ g: Un objet graphique : objet racine.

== Description

#strong[groot]; retourne l'objet racine graphique.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.groot.properties>)[proprietes de groot]; pour la liste complete des proprietes.

Les valeurs par defaut racine utilisent des noms de la forme #strong[Default];#emph[Objet];#emph[Propriete];. Par exemple, #strong[set(groot(), 'DefaultFigureColormap', cmap)]; change la colormap des nouvelles figures. Utiliser la valeur #strong['remove']; restaure la valeur d'usine.


== Exemple

``````matlab
g = groot()
g.ScreenDepth
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.groot.properties>)[proprietes de groot];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
