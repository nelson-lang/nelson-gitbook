#import "nelson_help.typ": *

= int32 <integer:int32>

Convertit en entier signé 32 bits.

== Syntaxe

- #raw("Y = int32(X)");

== Argument d'entrée

/ X: une matrice de double, single ou d'entiers.

== Argument de sortie

/ Y: une matrice d'entiers 32 bits.

== Description

#strong[int32]; convertit la valeur en type entier 32 bits.

 La valeur est arrondie à la valeur int32 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe int32 est mappée vers l'une des extrémités de la plage \[-2147483648, 2147483647\].


== Exemple

``````matlab
A = [1 -2147483649 -120 127 2147483647 2147483648]
B = int32(A)
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
