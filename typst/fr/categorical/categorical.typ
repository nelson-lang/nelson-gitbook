#import "nelson_help.typ": *

= categorical <categorical:categorical>

Créer un tableau catégoriel.

== Syntaxe

- #raw("C = categorical(A)");
- #raw("C = categorical(A, valueset)");
- #raw("C = categorical(A, valueset, categoryNames)");
- #raw("C = categorical(..., 'Ordinal', tf)");
- #raw("C = categorical(..., 'Protected', tf)");

== Argument d'entrée

/ A: Valeurs d'entrée : texte, string, numérique, logique ou catégoriel.
/ valueset: Ensemble explicite de valeurs qui définissent les catégories.
/ categoryNames: Noms associés aux catégories définies par #strong[valueset];.
/ tf: Scalaire logique qui active l'ordre ordinal ou la protection des catégories.

== Argument de sortie

/ C: Tableau catégoriel de même taille que #strong[A];.

== Description

#strong[categorical]; stocke les valeurs répétées sous forme de codes entiers et d'une liste de noms de catégories.

 Les valeurs texte vides, les strings manquants ou les valeurs absentes d'un #strong[valueset]; explicite deviennent des éléments catégoriels non définis.

 Les tableaux ordinaux utilisent l'ordre des catégories pour les comparaisons relationnelles et sont automatiquement protégés.

 #strong[contains];, #strong[startsWith];, #strong[endsWith]; et #strong[matches]; acceptent un tableau catégoriel en entrée : ils testent le nom de catégorie de chaque élément avec le motif (texte, cellule de textes, tableau de chaînes ou objet pattern, avec l'option facultative #strong['IgnoreCase'];) et renvoient un tableau logique de même taille. Les éléments non définis renvoient false. Chaque nom de catégorie n'est testé qu'une seule fois.

 Concaténer un tableau catégoriel avec du texte (#strong[\["z" C\]];, #strong[\['z' C\]];, #strong[\[{'z'} C\]];) ou #strong[missing]; convertit les autres opérandes : le résultat garde les catégories du premier opérande catégoriel et ajoute les nouvelles valeurs dans l'ordre des opérandes ; le texte vide et #strong[missing]; sont non définis. Les tableaux ordinaux et protégés refusent les valeurs qui ne sont pas déjà des catégories, et les autres classes (numériques, logiques, tableaux de chaînes à plusieurs éléments) sont refusées.


== Exemples

Créer des catégories à partir de valeurs texte.

``````matlab
C = categorical({'red','blue','red'}); categories(C)
``````

Créer un tableau ordinal avec un ordre explicite.

``````matlab
C = categorical({'low','high','mid'}, {'low','mid','high'}, 'Ordinal', true); C > 'mid'
``````

Rechercher les éléments dont le nom de catégorie correspond à un motif.

``````matlab
C = categorical({'winter storm','fire','Thunder Storm',''}); contains(C, "storm", 'IgnoreCase', true)
``````


== Voir aussi

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:iscategorical>)[iscategorical];, #nlink(<categorical:isundefined>)[isundefined];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<categorical:isprotected>)[isprotected];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<string:8_compare_text.matches>)[matches];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
