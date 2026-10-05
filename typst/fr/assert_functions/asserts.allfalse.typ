#import "nelson_help.typ": *

= asserts.allfalse <assert_functions:asserts.allfalse>

Verifie que chaque entree logique vaut false.

== Syntaxe

- #raw("asserts.allfalse(value)");
- #raw("[res, msg] = asserts.allfalse(value)");

== Argument d'entrée

/ value: Scalaire ou tableau logique.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque chaque entree logique vaut false.

 Les entrees non logiques levent immediatement une erreur d'argument.


== Exemples

All false

``````matlab
asserts.allfalse([false false]);
``````

Capture a true entry

``````matlab
[res, msg] = asserts.allfalse([false true]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.alltrue>)[asserts.alltrue];, #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
