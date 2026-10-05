#import "nelson_help.typ": *

= mrdivide <operators:mrdivide>

Division matricielle à droite, opérateur \/.

== Syntaxe

- #raw("C = mrdivide(A, B)");
- #raw("C = A / B");

== Argument d'entrée

/ A: une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.
/ B: une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.

== Argument de sortie

/ C: résultat de A \/ B

== Description

#strong[C \= mrdivide(A, B)]; retourne la division matricielle à droite de A par B.

 Lorsqu'un opérande est une table ou une timetable et que l'autre est un scalaire, #strong[A \/ B]; est une opération élément par élément appliquée à chaque variable, identique à #strong[A .\/ B]; : les noms de variables, les unités et les temps de ligne sont conservés. Toute autre combinaison avec une table ou une timetable (deux tables, ou une table et un tableau non scalaire) provoque une erreur : utilisez #strong[.\/]; à la place.


== Exemples

``````matlab
B = ones(3, 4)
A = B *2
A / B
``````

Opération élément par élément entre une table et un scalaire.

``````matlab
T = table([1; 2], [4; 8]);
T / 2
8 / T
``````


== Voir aussi

#nlink(<operators:ldivide>)[ldivide];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:rdivide>)[rdivide];, #nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [opérandes table et timetable combinés avec un scalaire (opération élément par élément).],
)

// Auteur: Allan CORNET
