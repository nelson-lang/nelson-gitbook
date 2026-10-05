#import "nelson_help.typ": *

= isordinal <categorical:isordinal>

Determiner si un tableau categoriel est ordinal.

== Syntaxe

- #raw("tf = isordinal(A)");

== Argument d'entrée

/ A: Valeur d'entree.

== Argument de sortie

/ tf: Scalaire logique qui vaut #strong[true]; pour les tableaux categoriels ordinaux.

== Description

#strong[isordinal]; retourne #strong[true]; lorsque #strong[A]; est categoriel et que l'ordre des categories est significatif.

 Les tableaux ordinaux prennent en charge les comparaisons relationnelles basees sur l'ordre des categories.


== Exemple

Creer puis tester un tableau ordinal.

``````matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); tf = isordinal(A)
``````


== Voir aussi

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:isprotected>)[isprotected];, #nlink(<categorical:reordercats>)[reordercats];, #nlink(<categorical:categories>)[categories];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
