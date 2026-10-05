#import "../nelson_help.typ": *

= contains <string:3_find_replace.contains>

Vérifie si une chaîne contient un motif.

== Syntaxe

- #raw("tf = contains(str, pattern)");
- #raw("tf = contains(str, pattern,'IgnoreCase', true)");
- #raw("tf = contains(str, pattern,'IgnoreCase', false)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes, une cellule de chaînes ou un tableau catégoriel.
/ pattern: une chaîne à rechercher.

== Argument de sortie

/ tf: une matrice de booléens.

== Description

#strong[contains]; renvoie #strong[true]; si #strong[str]; contient#strong[pattern];.

 Si #strong[str]; est un tableau catégoriel, #strong[contains]; teste le nom de catégorie de chaque élément et renvoie un tableau logique de même taille. Les éléments non définis renvoient #strong[false];. #strong[pattern]; ne peut pas être catégoriel.


== Exemples

``````matlab

str = 'To make a mountain out of a molehill';
k = contains (str, 'hill')
k = contains (str, 'molehill')
k = contains (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = contains(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = contains(A, 'son')


``````

Recherche de motif sur les noms de catégorie d'un tableau catégoriel.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = contains(C, "storm", 'IgnoreCase', true)
``````


== Voir aussi

#nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<categorical:categorical>)[categorical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [tableau catégoriel accepté comme entrée str.],
)

// Auteur: Allan CORNET
