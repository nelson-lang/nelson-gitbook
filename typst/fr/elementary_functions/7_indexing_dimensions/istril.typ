#import "../nelson_help.typ": *

= istril <elementary_functions:7_indexing_dimensions.istril>

Tester si une matrice est triangulaire infÃ©rieure

== Syntaxe

- #raw("tf = istril(M)");

== Argument d'entrée

/ M: un tableau numÃ©rique

== Argument de sortie

/ tf: boolÃ©en : rÃ©sultat de 'istril'.

== Description

#strong[istril]; renvoie un scalaire boolÃ©en si la matrice est triangulaire infÃ©rieure.


== Exemple

``````matlab
A = eye(3, 3);
R = istril(A)
R = istril(A(:,1))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isdiag>)[isdiag];, #nlink(<elementary_functions:7_indexing_dimensions.istriu>)[istriu];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
