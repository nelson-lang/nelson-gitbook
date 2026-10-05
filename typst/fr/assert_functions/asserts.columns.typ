#import "nelson_help.typ": *

= asserts.columns <assert_functions:asserts.columns>

Verifie le nombre de colonnes.

== Syntaxe

- #raw("asserts.columns(value, n)");
- #raw("[res, msg] = asserts.columns(value, n)");

== Argument d'entrée

/ value: Valeur a tester.
/ n: Nombre de colonnes attendu, scalaire entier fini non negatif.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque size(value, 2) est egal a n.

 Un n invalide leve immediatement une erreur d'argument.


== Exemples

Three columns

``````matlab
asserts.columns(ones(2, 3), 3);
``````

Capture a column-count failure

``````matlab
[res, msg] = asserts.columns(ones(2, 3), 2);
``````


== Voir aussi

#nlink(<assert_functions:asserts.rows>)[asserts.rows];, #nlink(<assert_functions:asserts.size>)[asserts.size];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
