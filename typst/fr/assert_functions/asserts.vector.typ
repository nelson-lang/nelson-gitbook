#import "nelson_help.typ": *

= asserts.vector <assert_functions:asserts.vector>

Verifie qu'une valeur est un vecteur.

== Syntaxe

- #raw("asserts.vector(value)");
- #raw("[res, msg] = asserts.vector(value)");

== Argument d'entrée

/ value: Valeur a tester.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque value est un vecteur ligne ou colonne.

 Les diagnostics incluent les dimensions calculees.


== Exemples

Vector value

``````matlab
asserts.vector([1 2]);
``````

Capture a matrix value

``````matlab
[res, msg] = asserts.vector(ones(2, 2));
``````


== Voir aussi

#nlink(<assert_functions:asserts.rowVector>)[asserts.rowVector];, #nlink(<assert_functions:asserts.columnVector>)[asserts.columnVector];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
