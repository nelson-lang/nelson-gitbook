#import "../nelson_help.typ": *

= count <string:3_find_replace.count>

Calcule le nombre d'occurrences d'un motif.

== Syntaxe

- #raw("nbocc = count(str, pattern)");
- #raw("nbocc = count(str, pattern,'IgnoreCase', true)");
- #raw("nbocc = count(str, pattern,'IgnoreCase', false)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ pattern: une chaîne, un tableau de chaînes ou une cellule de chaînes à rechercher.

== Argument de sortie

/ nbocc: une matrice d'entiers.

== Description

#strong[count]; calcule le nombre d'occurrences d'un motif.


== Exemple

``````matlab

str = 'To make a mountain out of a molehill';
k = count(str, 'hill')
k = count(str, 'molehill')
k = count(str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = count(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = count(A, 'son')


``````


== Voir aussi

#nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<string:3_find_replace.contains>)[contains];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
