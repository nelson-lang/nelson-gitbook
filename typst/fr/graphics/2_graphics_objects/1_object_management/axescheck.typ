#import "../../nelson_help.typ": *

= axescheck <graphics:2_graphics_objects.1_object_management.axescheck>

Extrait un handle d'axes d'une liste d'arguments.

== Syntaxe

- #raw("[ax, args, nargs] = axescheck(arg1, arg2, ...)");

== Argument d'entrée

/ arg1, arg2, ...: une liste d'arguments, telle que passée à une fonction de tracé.

== Argument de sortie

/ ax: le handle d'axes trouvé dans la liste, ou #strong[\[\]]; si aucun n'a été fourni.
/ args: les arguments restants, sous forme de tableau de cellules.
/ nargs: le nombre d'arguments restants, #strong[numel(args)];.

== Description

#strong[axescheck]; est un utilitaire pour les fonctions de tracé. Il renvoie dans #strong[ax]; un handle d'axes de tête (ou #strong[\[\]]; lorsque le premier argument n'est pas un axes), les arguments restants étant dans #strong[args];. Une paire #strong['Parent'];, valeur présente dans la liste fournit également l'axes et est retirée de #strong[args];.


== Exemple

``````matlab
ax = axes();
[cax, args, nargs] = axescheck(ax, 1, 2)
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];, #nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
