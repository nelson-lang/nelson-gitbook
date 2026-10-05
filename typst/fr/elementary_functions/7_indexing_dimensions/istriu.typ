#import "../nelson_help.typ": *

= istriu <elementary_functions:7_indexing_dimensions.istriu>

Vérifie si une matrice est triangulaire supérieure.

== Syntaxe

- #raw("tf = istriu(M)");

== Argument d'entrée

/ M: un tableau numérique

== Argument de sortie

/ tf: logique : résultat de 'istriu'.

== Description

#strong[istriu]; renvoie un logique scalaire indiquant si l'entrée est triangulaire supérieure.


== Exemple

``````matlab
A = eye(3, 3);
R = istriu(A)
R = istriu(A(:,1))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isdiag>)[isdiag];, #nlink(<elementary_functions:7_indexing_dimensions.istril>)[istril];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
