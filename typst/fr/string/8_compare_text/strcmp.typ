#import "../nelson_help.typ": *

= strcmp <string:8_compare_text.strcmp>

Comparaison de chaînes.

== Syntaxe

- #raw("res = strcmp(s1, s2)");

== Argument d'entrée

/ s1: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ s2: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ res: un booléen : vrai si les deux sont identiques, faux sinon.

== Description

#strong[strcmp]; compare deux chaînes.


== Exemple

``````matlab
strcmp('Nelson', 'nelSon')
strcmp('Nelson', 'Nelson')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strcmp(A, B)
strcmp(A, C)
strcmp(C, 'C')

``````


== Voir aussi

#nlink(<string:1_create_convert_text.char>)[char];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
