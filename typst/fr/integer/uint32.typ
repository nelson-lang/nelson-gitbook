#import "nelson_help.typ": *

= uint32 <integer:uint32>

Convertit en entier non signé 32 bits.

== Syntaxe

- #raw("Y = uint32(X)");

== Argument d'entrée

/ X: une matrice de double, single ou d'entiers.

== Argument de sortie

/ Y: une matrice d'entiers non signés 32 bits.

== Description

#strong[uint32]; convertit la valeur en type entier non signé 32 bits.

 La valeur est arrondie à la valeur uint32 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe uint32 est mappée vers l'une des extrémités de la plage \[0, 4294967295\].


== Exemple

``````matlab
A = [1 -2147483649 -120 127 2147483647 2147483648]
B = uint32(A)
``````


== Voir aussi

#nlink(<integer:intmax>)[intmax];, #nlink(<integer:intmax>)[intmin];, #nlink(<interpreter:numeric_types>)[numeric types];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
