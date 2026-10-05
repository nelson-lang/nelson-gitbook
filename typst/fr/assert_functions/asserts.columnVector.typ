#import "nelson_help.typ": *

= asserts.columnVector <assert_functions:asserts.columnVector>

Verifie qu'une valeur est un vecteur colonne.

== Syntaxe

- #raw("asserts.columnVector(value)");
- #raw("[res, msg] = asserts.columnVector(value)");

== Argument d'entrée

/ value: Valeur a tester.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque value a la forme d'un vecteur colonne.

 Les diagnostics indiquent la classe et les dimensions calculees.


== Exemples

Column vector

``````matlab
asserts.columnVector([1; 2]);
``````

Capture a shape failure

``````matlab
[res, msg] = asserts.columnVector([1 2]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.rowVector>)[asserts.rowVector];, #nlink(<assert_functions:asserts.vector>)[asserts.vector];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
