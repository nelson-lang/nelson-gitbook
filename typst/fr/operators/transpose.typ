#import "nelson_help.typ": *

= transpose <operators:transpose>

Retourne la transposée d'un vecteur ou d'une matrice : opérateur .'

== Syntaxe

- #raw("C= transpose(A)");
- #raw("C = A .'");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ C: résultat : transposée de A.

== Description

#strong[C \= transpose(A)]; retourne la transposée de A.


== Exemples

``````matlab
A = 3
    B = A.'
``````

``````matlab
A = -i
    B = A.'
``````

``````matlab
 A = sparse(eye(3, 4) * i)
    B = A.'
``````


== Voir aussi

#nlink(<operators:ctranspose>)[ctranspose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
