#import "nelson_help.typ": *

= iscategorical <categorical:iscategorical>

Determiner si un tableau est categoriel.

== Syntaxe

- #raw("tf = iscategorical(A)");

== Argument d'entrée

/ A: Valeur d'entree.

== Argument de sortie

/ tf: Scalaire logique qui vaut #strong[true]; lorsque #strong[A]; est un tableau categoriel.

== Description

#strong[iscategorical]; verifie le type de stockage de son entree sans la modifier.


== Exemple

Tester un tableau categoriel.

``````matlab
A = categorical({'red','blue'}); tf = iscategorical(A)
``````


== Voir aussi

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<categorical:isprotected>)[isprotected];, #nlink(<categorical:isundefined>)[isundefined];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
