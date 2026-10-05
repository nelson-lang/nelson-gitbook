#import "nelson_help.typ": *

= asserts.finite <assert_functions:asserts.finite>

Verifie que chaque entree numerique est finie.

== Syntaxe

- #raw("asserts.finite(value)");
- #raw("[res, msg] = asserts.finite(value)");

== Argument d'entrée

/ value: Scalaire ou tableau numerique ou logique.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque chaque entree est finie.

 NaN, Inf et -Inf font echouer cette assertion.


== Exemples

Finite values

``````matlab
asserts.finite([1 2 3]);
``````

Capture an infinite value

``````matlab
[res, msg] = asserts.finite([1 Inf]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.nonNan>)[asserts.nonNan];, #nlink(<assert_functions:asserts.real>)[asserts.real];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
