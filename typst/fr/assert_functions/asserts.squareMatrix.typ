#import "nelson_help.typ": *

= asserts.squareMatrix <assert_functions:asserts.squareMatrix>

Verifie qu'une valeur est une matrice carree.

== Syntaxe

- #raw("asserts.squareMatrix(value)");
- #raw("[res, msg] = asserts.squareMatrix(value)");

== Argument d'entrée

/ value: Valeur a tester.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque value a deux dimensions matricielles egales.

 Les diagnostics indiquent la classe et les dimensions calculees.


== Exemples

Square matrix

``````matlab
asserts.squareMatrix(ones(2, 2));
``````

Capture a shape failure

``````matlab
[res, msg] = asserts.squareMatrix(ones(2, 3));
``````


== Voir aussi

#nlink(<assert_functions:asserts.matrix>)[asserts.matrix];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
