#import "../nelson_help.typ": *

= strcat <string:1_create_convert_text.strcat>

concatène des chaînes horizontalement.

== Syntaxe

- #raw("res = strcat(s1, s2, ..., sN)");

== Argument d'entrée

/ s1, s2, ..., sN: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ res: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Description

#strong[strcat]; concatène les chaînes horizontalement.

 Si toutes les entrées sont des tableaux de caractères, alors#strong[res]; est un tableau de caractères.

 Si une entrée est un tableau de chaînes, alors#strong[res]; est un tableau de chaînes.

 Si une entrée est un tableau de cellules, et qu'aucune n'est un tableau de chaînes, alors#strong[res]; est un tableau de cellules de vecteurs de caractères.

 Pour les entrées de tableau de cellules et de chaînes,#strong[strcat]; ne supprime pas les espaces blancs à la fin.

 Pour les entrées de tableau de caractères,#strong[strcat]; supprime les caractères d'espacement ASCII à la fin.


== Exemple

``````matlab
strcat("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = strcat(A, B)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.append>)[append];, #nlink(<string:6_join_split_extract.join>)[join];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
