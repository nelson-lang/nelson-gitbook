#import "nelson_help.typ": *

= asserts.rowVector <assert_functions:asserts.rowVector>

Verifie qu'une valeur est un vecteur ligne.

== Syntaxe

- #raw("asserts.rowVector(value)");
- #raw("[res, msg] = asserts.rowVector(value)");

== Argument d'entrée

/ value: Valeur a tester.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque value a la forme d'un vecteur ligne.

 Les diagnostics indiquent la classe et les dimensions calculees.


== Exemples

Row vector

``````matlab
asserts.rowVector([1 2]);
``````

Capture a shape failure

``````matlab
[res, msg] = asserts.rowVector([1; 2]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.columnVector>)[asserts.columnVector];, #nlink(<assert_functions:asserts.vector>)[asserts.vector];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
