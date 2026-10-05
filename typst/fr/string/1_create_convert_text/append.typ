#import "../nelson_help.typ": *

= append <string:1_create_convert_text.append>

concatène des chaînes horizontalement.

== Syntaxe

- #raw("res = append(s1, s2, ..., sN)");

== Argument d'entrée

/ s1, s2, ..., sN: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ res: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Description

#strong[strcat]; concatène les chaînes horizontalement.

 Si toutes les entrées sont des tableaux de caractères, alors#strong[res]; est un tableau de caractères.

 Si une entrée est un tableau de chaînes, alors#strong[res]; est un tableau de chaînes.

 Si une entrée est une cellule et qu'aucune n'est un tableau de chaînes, alors#strong[res]; est une cellule de vecteurs de caractères.

 #strong[append]; ne supprime pas les espaces finaux.


== Exemple

``````matlab
append("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = append(A, B)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.strcat>)[strcat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
