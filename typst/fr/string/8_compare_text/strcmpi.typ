#import "../nelson_help.typ": *

= strcmpi <string:8_compare_text.strcmpi>

Comparaison de chaînes (insensible à la casse).

== Syntaxe

- #raw("res = strcmpi(s1, s2)");

== Argument d'entrée

/ s1: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ s2: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ res: un booléen : vrai si les deux sont identiques (insensible à la casse), sinon faux.

== Description

#strong[strcmpi]; compares two strings (case insensitive).


== Exemple

``````matlab
strcmpi('Nelson', 'nelSon')
strcmpi('Nelson', 'Nelson')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strcmpi(A, B)
strcmpi(A, C)
strcmpi(C, 'C')

``````


== Voir aussi

#nlink(<string:1_create_convert_text.char>)[char];, #nlink(<string:8_compare_text.strcmp>)[strcmp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
