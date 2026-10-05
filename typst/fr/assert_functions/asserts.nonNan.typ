#import "nelson_help.typ": *

= asserts.nonNan <assert_functions:asserts.nonNan>

Verifie qu'aucune entree numerique ne vaut NaN.

== Syntaxe

- #raw("asserts.nonNan(value)");
- #raw("[res, msg] = asserts.nonNan(value)");

== Argument d'entrée

/ value: Scalaire ou tableau numerique ou logique.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsqu'aucune entree ne vaut NaN.

 Les valeurs infinies sont autorisees par cette assertion.


== Exemples

No NaN values

``````matlab
asserts.nonNan([1 Inf]);
``````

Capture a NaN value

``````matlab
[res, msg] = asserts.nonNan([1 NaN]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.finite>)[asserts.finite];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
