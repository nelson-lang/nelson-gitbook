#import "../../nelson_help.typ": *

= allchild <graphics:2_graphics_objects.1_object_management.allchild>

Retourne tous les enfants directs d'objets graphiques.

== Syntaxe

- #raw("h = allchild(objhandles)");

== Argument d'entrée

/ objhandles: objet graphique ou tableau d'objets graphiques.

== Argument de sortie

/ h: tableau colonne contenant tous les objets graphiques enfants directs.

== Description

#strong[allchild]; retourne les enfants directs quelle que soit la valeur de #strong[HandleVisibility];.

 Pour #strong[groot];, il retourne toutes les figures dans l'ordre des enfants de la racine, y compris les figures masquees dans la propriete #strong[Children]; lorsque #strong[ShowHiddenHandles]; vaut #strong['off'];.


== Exemple

``````matlab
close all
f = figure('Visible', 'off');
ax = axes('Parent', f, 'HandleVisibility', 'off');
h = allchild(f)
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.findall>)[findall];, #nlink(<graphics:2_graphics_objects.1_object_management.findobj>)[findobj];, #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
