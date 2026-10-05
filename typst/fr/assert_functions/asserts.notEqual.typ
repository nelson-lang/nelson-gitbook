#import "nelson_help.typ": *

= asserts.notEqual <assert_functions:asserts.notEqual>

Verifie que deux valeurs ne sont pas egales.

== Syntaxe

- #raw("asserts.notEqual(computed, expected)");
- #raw("[res, msg] = asserts.notEqual(computed, expected)");

== Argument d'entrée

/ computed: Valeur calculee.
/ expected: Valeur qui ne doit pas etre egale a computed.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque asserts.isequal echouerait.

 Elle sert aux controles negatifs d'egalite dans les tests.


== Exemples

Different values

``````matlab
asserts.notEqual(1, 2);
``````

Capture an equality failure

``````matlab
[res, msg] = asserts.notEqual(1, 1);
``````


== Voir aussi

#nlink(<assert_functions:asserts.isequal>)[asserts.isequal];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
