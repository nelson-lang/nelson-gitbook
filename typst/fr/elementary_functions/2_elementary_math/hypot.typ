#import "../nelson_help.typ": *

= hypot <elementary_functions:2_elementary_math.hypot>

Racine carrée de la somme des carrés

== Syntaxe

- #raw("C = hypot(A, B)");

== Argument d'entrée

/ A: une variable : scalaire, vecteur, matrice ou tableau multidimensionnel (single ou double).
/ B: une variable : scalaire, vecteur, matrice ou tableau multidimensionnel (single ou double).

== Argument de sortie

/ R: résultat de hypot : hypoténuse.

== Description

#strong[hypot]; calcule l'hypoténuse.

 Si une ou deux entrées sont NaN, alors #strong[hypot]; renvoie #strong[NaN];.


== Exemple

``````matlab
R = hypot(1e308, 1e308)
R = hypot(1e309, 1e309)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
