#import "../../nelson_help.typ": *

= findall <graphics:2_graphics_objects.1_object_management.findall>

Trouve des objets graphiques, y compris les handles caches.

== Syntaxe

- #raw("h = findall()");
- #raw("h = findall(prop, value)");
- #raw("h = findall(objhandles, prop, value)");
- #raw("h = findall(objhandles, 'flat', ...)");
- #raw("h = findall(objhandles, '-depth', d, ...)");

== Argument d'entrée

/ objhandles: objet graphique ou tableau d'objets graphiques depuis lesquels chercher.
/ prop: nom de propriete sous forme de vecteur de caracteres ou chaine scalaire.
/ value: valeur de propriete a rechercher.
/ d: profondeur de recherche, entiere positive ou nulle, ou Inf.

== Argument de sortie

/ h: tableau colonne des objets graphiques trouves.

== Description

#strong[findall]; parcourt la hierarchie graphique comme #strong[findobj];, mais inclut les objets dont #strong[HandleVisibility]; vaut #strong['off']; ou #strong['callback'];.

 Quand la recherche demarre depuis #strong[groot];, les figures cachees sont parcourues meme si #strong[ShowHiddenHandles]; vaut #strong['off'];.


== Exemple

``````matlab
close all
f = figure('Visible', 'off', 'HandleVisibility', 'off', 'Tag', 'hiddenFigure');
h = findall(groot(), 'Tag', 'hiddenFigure')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.findobj>)[findobj];, #nlink(<graphics:2_graphics_objects.1_object_management.allchild>)[allchild];, #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
