#import "../nelson_help.typ": *

= strncmp <string:8_compare_text.strncmp>

Compare les n premiers caractères des chaînes.

== Syntaxe

- #raw("res = strncmp(s1, s2, n)");

== Argument d'entrée

/ s1: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ s2: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ n: un entier : nombre de caractères à comparer.

== Argument de sortie

/ res: un booléen : vrai si les deux sont identiques, sinon faux.

== Description

#strong[strncmp]; compare les n premiers caractères de deux chaînes (sensible à la casse).
== Exemple

``````matlab
strncmp('Nelson', 'nelSon', 3)
strncmp('Nelson', 'Nelson', 3)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strncmp(A, B, 2)
strncmp(A, C, 2)
strncmp(C, 'C', 4)

``````


== Voir aussi

#nlink(<string:8_compare_text.strcmp>)[strcmp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
