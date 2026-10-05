#import "../nelson_help.typ": *

= startsWith <string:3_find_replace.startsWith>

Vérifie si une chaîne commence par un motif.

== Syntaxe

- #raw("tf = startsWith(str, pattern)");
- #raw("tf = startsWith(str, pattern,'IgnoreCase', true)");
- #raw("tf = startsWith(str, pattern,'IgnoreCase', false)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes, une cellule de chaînes ou un tableau catégoriel.
/ pattern: une chaîne à rechercher.

== Argument de sortie

/ tf: une matrice de booléens.

== Description

#strong[startsWith]; renvoie #strong[true]; si #strong[str]; commence par#strong[pattern];.

 Si #strong[str]; est un tableau catégoriel, #strong[startsWith]; teste le nom de catégorie de chaque élément et renvoie un tableau logique de même taille. Les éléments non définis renvoient #strong[false];. #strong[pattern]; ne peut pas être catégoriel.


== Exemples

``````matlab

str = 'To make a mountain out of a molehill';
k = startsWith (str, 'in')
k = startsWith (str, 'to')
k = startsWith (str, 'to', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = startsWith(A, 'Nel')

A = ["Nel", "son"; "Nelson", "Modules"];
k = startsWith(A, "Nel")


``````

Recherche de motif sur les noms de catégorie d'un tableau catégoriel.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = startsWith(C, "thunder", 'IgnoreCase', true)
``````


== Voir aussi

#nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<categorical:categorical>)[categorical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [tableau catégoriel accepté comme entrée str.],
)

// Auteur: Allan CORNET
