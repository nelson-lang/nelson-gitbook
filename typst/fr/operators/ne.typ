#import "nelson_help.typ": *

= ne <operators:ne>

Inégalité, opérateur \~\=

== Syntaxe

- #raw("C = ne(A, B)");
- #raw("C = A ~= B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A \~\= B

== Description

#strong[C \= ne(A, B)]; effectue l'opération d'inégalité : A \~\= B.

 #strong[ne]; compare les parties réelle et imaginaire des tableaux numériques.

 Lorsque les entrees sont des tableaux sparse numeriques ou logiques, le resultat est un tableau sparse logique. Les operandes sparse single et single-complex sont pris en charge.


== Exemple

``````matlab
ne(3, 4)
3 ~= 4
``````


== Voir aussi

#nlink(<operators:le>)[le];, #nlink(<operators:ge>)[ge];, #nlink(<operators:eq>)[eq];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [operandes sparse single et single-complex pris en charge.],
)

// Auteur: Allan CORNET
