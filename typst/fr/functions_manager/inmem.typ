#import "nelson_help.typ": *

= inmem <functions_manager:inmem>

Noms des fonctions, fichiers MEX.

== Syntaxe

- #raw("F = inmem()");
- #raw("[F, M] = inmem()");
- #raw("F = inmem('-completenames')");
- #raw("[F, M] = inmem('-completenames')");

== Argument d'entrée

/ '-completenames': une chaîne : nom de fonction mex.

== Argument de sortie

/ F: tableau de cellules de vecteurs de caractères contenant les noms des macros chargées.
/ M: tableau de cellules de vecteurs de caractères contenant les noms des mex chargés.

== Description

#strong[inmem]; retourne un tableau de cellules des noms des fonctions et mex actuellement chargés.


== Exemple

``````matlab
clear all
tand(3)
inmem()
inmem('-completenames')

``````


== Voir aussi

#nlink(<memory_manager:clear>)[clear];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
