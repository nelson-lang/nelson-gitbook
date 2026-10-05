#import "nelson_help.typ": *

= dbstack <debugger:dbstack>

Pile d'appels (call stack).

== Syntaxe

- #raw("dbstack");
- #raw("st = dbstack()");
- #raw("dbstack('-completenames')");
- #raw("st = dbstack('-completenames')");
- #raw("dbstack('-completenames', omit)");
- #raw("st = dbstack('-completenames', omit)");

== Argument d'entrée

/ omit: un entier : nombre de trames à omettre (doit être positif).

== Argument de sortie

/ st: une structure

== Description

#strong[dbstack]; affiche les noms de fichiers et les numéros de ligne des appels de fonctions.

 #strong[dbstack('-completenames')]; affiche les chemins de fichiers complets.


== Exemple

Creates a myfun.m and calls it.

``````matlab
function myfun(x)
dbstack();
end
``````


== Voir aussi

#nlink(<functions_manager:which>)[which];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
