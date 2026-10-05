#import "../nelson_help.typ": *

= isdiag <elementary_functions:7_indexing_dimensions.isdiag>

Vérifie si une matrice est diagonale.

== Syntaxe

- #raw("tf = isdiag(M)");

== Argument d'entrée

/ M: un tableau numérique

== Argument de sortie

/ tf: booléen : résultat de 'isdiag'.

== Description

#strong[isdiag]; renvoie un scalaire booléen si la matrice est diagonale.


== Exemple

``````matlab
A = eye(3, 3);
R = isdiag(A)
R = isdiag(A(:,1))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.istriu>)[istriu];, #nlink(<elementary_functions:7_indexing_dimensions.istril>)[istril];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
