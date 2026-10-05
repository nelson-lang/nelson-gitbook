#import "nelson_help.typ": *

= int16 <integer:int16>

Convertit en entier signé 16 bits.

== Syntaxe

- #raw("Y = int16(X)");

== Argument d'entrée

/ X: une matrice de double, single ou d'entiers.

== Argument de sortie

/ Y: une matrice d'entiers 16 bits.

== Description

#strong[int16]; convertit la valeur en type entier 16 bits.

 La valeur est arrondie à la valeur int16 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe int16 est mappée vers l'une des extrémités de la plage \[-32768, 32767\].


== Exemple

``````matlab
A = [1 -32769 -120 127 32767 32768]
B = int16(A)
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
