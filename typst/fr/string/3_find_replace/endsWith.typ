#import "../nelson_help.typ": *

= endsWith <string:3_find_replace.endsWith>

vérifie si une chaîne se termine par un motif.

== Syntaxe

- #raw("tf = endsWith(str, pattern)");
- #raw("tf = endsWith(str, pattern,'IgnoreCase', true)");
- #raw("tf = endsWith(str, pattern,'IgnoreCase', false)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes, une cellule de chaînes ou un tableau catégoriel.
/ pattern: une chaîne à rechercher.

== Argument de sortie

/ tf: une matrice de booléens.

== Description

#strong[endsWith]; renvoie #strong[vrai]; si #strong[str]; se termine par#strong[pattern];.

 Si #strong[str]; est un tableau catégoriel, #strong[endsWith]; teste le nom de catégorie de chaque élément et renvoie un tableau logique de même taille. Les éléments non définis renvoient #strong[false];. #strong[pattern]; ne peut pas être catégoriel.


== Exemples

``````matlab

str = 'To make a mountain out of a molehill';
k = endsWith (str, 'hill')
k = endsWith (str, 'molehill')
k = endsWith (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = endsWith(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = endsWith(A, "son")


``````

Recherche de motif sur les noms de catégorie d'un tableau catégoriel.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = endsWith(C, "storm", 'IgnoreCase', true)
``````


== Voir aussi

#nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<categorical:categorical>)[categorical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [tableau catégoriel accepté comme entrée str.],
)

// Auteur: Allan CORNET
