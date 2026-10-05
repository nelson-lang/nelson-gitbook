#import "nelson_help.typ": *

= asserts.scalar <assert_functions:asserts.scalar>

Verifie qu'une valeur est scalaire.

== Syntaxe

- #raw("asserts.scalar(value)");
- #raw("[res, msg] = asserts.scalar(value)");

== Argument d'entrée

/ value: Valeur a tester.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque value est scalaire.

 Les diagnostics incluent les dimensions calculees.


== Exemples

Scalar value

``````matlab
asserts.scalar(1);
``````

Capture a non-scalar value

``````matlab
[res, msg] = asserts.scalar([1 2]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.vector>)[asserts.vector];, #nlink(<assert_functions:asserts.matrix>)[asserts.matrix];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
