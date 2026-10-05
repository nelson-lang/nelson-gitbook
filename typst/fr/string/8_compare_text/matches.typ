#import "../nelson_help.typ": *

= matches <string:8_compare_text.matches>

Détermine si un motif correspond aux chaînes.

== Syntaxe

- #raw("res = matches(str, pattern)");
- #raw("res = matches(str, pattern, 'IgnoreCase', true)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes, une cellule de chaînes ou un tableau catégoriel.
/ pattern: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ res: un booléen : vrai si les deux correspondent, sinon faux.

== Description

#strong[matches]; détermine si le motif correspond aux chaînes.

 Si #strong[str]; est un tableau catégoriel, #strong[matches]; teste le nom de catégorie de chaque élément et renvoie un tableau logique de même taille. Les éléments non définis renvoient #strong[false];. #strong[pattern]; ne peut pas être catégoriel.


== Exemples

``````matlab
matches("Nelson", 'nelSon')
matches("Nelson", 'Nelson')
str = ["yellow", "green", "blue", "brown"];
R = matches(str, ["yellow", "Brown"], 'IgnoreCase', true);

``````

Recherche de motif sur les noms de catégorie d'un tableau catégoriel.

``````matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = matches(C, "FIRE", 'IgnoreCase', true)
``````


== Voir aussi

#nlink(<string:8_compare_text.strcmp>)[strcmp];, #nlink(<categorical:categorical>)[categorical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [tableau catégoriel accepté comme entrée str.],
)

// Auteur: Allan CORNET
