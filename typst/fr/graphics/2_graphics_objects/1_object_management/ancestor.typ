#import "../../nelson_help.typ": *

= ancestor <graphics:2_graphics_objects.1_object_management.ancestor>

Ancêtre d'un objet graphique.

== Syntaxe

- #raw("p = ancestor(h, type)");
- #raw("p = ancestor(h, type, 'toplevel')");

== Argument d'entrée

/ h: objet graphique
/ type: un vecteur ligne de caractères ou une cellule de chaînes :
/ 'toplevel': un vecteur ligne de caractères : retourne le parent le plus haut dans la hiérarchie d'objets qui correspond à la condition.

== Argument de sortie

/ p: un objet graphique ou \[\]

== Description

#strong[ancestor]; retourne le handle de l'ancêtre d'un objet spécifié d'un type donné.


== Exemple

``````matlab
f = figure();
ax = gca();
s = surf(peaks);
AX = ancestor(s, 'axes')
F = ancestor(s, 'figure')
R = ancestor(s, 'root')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
