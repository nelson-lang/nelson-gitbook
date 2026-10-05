#import "../nelson_help.typ": *

= isvector <elementary_functions:7_indexing_dimensions.isvector>

Vérifie si l'entrée est un vecteur.

== Syntaxe

- #raw("tf = isvector(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ tf: logique : résultat de 'isvector'.

== Description

#strong[isvector]; renvoie un logique scalaire indiquant si l'entrée est un vecteur.


== Exemple

``````matlab
A = eye(3, 3);
R = isvector(A)
R = isvector(A(:,1))
``````


== Voir aussi

#nlink(<types:isempty>)[isempty];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
