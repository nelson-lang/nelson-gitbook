#import "../../nelson_help.typ": *

= findobj <graphics:2_graphics_objects.1_object_management.findobj>

Trouve des objets graphiques avec des proprietes donnees.

== Syntaxe

- #raw("h = findobj()");
- #raw("h = findobj(prop, value)");
- #raw("h = findobj(objhandles, prop, value)");
- #raw("h = findobj(objhandles, 'flat', ...)");
- #raw("h = findobj(objhandles, '-depth', d, ...)");
- #raw("h = findobj(..., '-property', prop)");
- #raw("h = findobj(..., '-regexp', prop, expr)");

== Argument d'entrée

/ objhandles: objet graphique ou tableau d'objets graphiques depuis lesquels chercher.
/ prop: nom de propriete sous forme de vecteur de caracteres ou chaine scalaire.
/ value: valeur de propriete a rechercher.
/ d: profondeur de recherche, entiere positive ou nulle, ou Inf.
/ expr: expression reguliere appliquee a une propriete texte.

== Argument de sortie

/ h: tableau colonne des objets graphiques trouves.

== Description

#strong[findobj]; parcourt la hierarchie graphique depuis l'objet racine ou depuis les objets graphiques fournis. Les objets dont #strong[HandleVisibility]; vaut #strong['off'];, ainsi que leurs descendants, ne sont pas retournes.

 Les predicats de proprietes peuvent etre combines avec #strong['-and'];, #strong['-or'];, #strong['-xor']; et #strong['-not'];. Les tableaux de cellules permettent de grouper les expressions.


== Exemples

``````matlab
close all
plot(rand(5))
h = findobj('Type', 'line')
``````

``````matlab
close all
plot(1:10, 'Tag', 'linear')
h = findobj('-regexp', 'Tag', 'lin')
``````

``````matlab
close all
plot(1:10, 'Tag', 'linear')
hold on
plot((1:10).^2, 'Tag', 'quadratic')
h = findobj('Type', 'line', '-and', '-not', {'Tag', 'linear'})
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];, #nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
