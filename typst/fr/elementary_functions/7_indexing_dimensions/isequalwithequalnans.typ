#import "../nelson_help.typ": *

= isequalwithequalnans <elementary_functions:7_indexing_dimensions.isequalwithequalnans>

Compare des tableaux en considerant les valeurs NaN comme egales.

== Syntaxe

- #raw("tf = isequalwithequalnans(A, B)");
- #raw("tf = isequalwithequalnans(A1, A2, ...)");

== Argument d'entrée

/ A: Tableau d'entree.

== Argument de sortie

/ tf: Scalaire logique.

== Description

#strong[isequalwithequalnans]; est equivalent a #strong[isequaln];.


== Exemple

``````matlab
tf = isequalwithequalnans([NaN 1], [NaN 1])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
