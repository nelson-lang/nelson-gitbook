#import "nelson_help.typ": *

= mtimes <operators:mtimes>

Multiplication matricielle, opérateur \*

== Syntaxe

- #raw("C = mtimes(A, B)");
- #raw("C = A * B");

== Argument d'entrée

/ A: une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.
/ B: une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.

== Argument de sortie

/ C: résultat de A \* B

== Description

#strong[C \= mtimes(A, B)]; effectue l'opération de multiplication matricielle : A \* B.

 Lorsqu'un opérande est une table ou une timetable et que l'autre est un scalaire, #strong[A \* B]; est une opération élément par élément appliquée à chaque variable, identique à #strong[A .\* B]; : les noms de variables, les unités et les temps de ligne sont conservés. Toute autre combinaison avec une table ou une timetable (deux tables, ou une table et un tableau non scalaire) provoque une erreur : utilisez #strong[.\*]; à la place.


== Exemples

``````matlab
mtimes(3, 4)
3 * 4
``````

``````matlab
M1 = [2 6 10; 4 8 70];
M2 = [-25 88 1; 23 29 41; 24 40 0];
M1 * M2
``````

Opération élément par élément entre une table et un scalaire.

``````matlab
T = table([1; 2], [3; 4]);
T * 2
0.5 * T
``````


== Voir aussi

#nlink(<operators:times>)[times];, #nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [opérandes table et timetable combinés avec un scalaire (opération élément par élément).],
)

// Auteur: Allan CORNET
