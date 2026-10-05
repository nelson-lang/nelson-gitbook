#import "nelson_help.typ": *

= asserts.rows <assert_functions:asserts.rows>

Verifie le nombre de lignes.

== Syntaxe

- #raw("asserts.rows(value, n)");
- #raw("[res, msg] = asserts.rows(value, n)");

== Argument d'entrée

/ value: Valeur a tester.
/ n: Nombre de lignes attendu, scalaire entier fini non negatif.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque size(value, 1) est egal a n.

 Un n invalide leve immediatement une erreur d'argument.


== Exemples

Two rows

``````matlab
asserts.rows(ones(2, 3), 2);
``````

Capture a row-count failure

``````matlab
[res, msg] = asserts.rows(ones(2, 3), 3);
``````


== Voir aussi

#nlink(<assert_functions:asserts.columns>)[asserts.columns];, #nlink(<assert_functions:asserts.size>)[asserts.size];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
