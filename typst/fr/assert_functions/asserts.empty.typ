#import "nelson_help.typ": *

= asserts.empty <assert_functions:asserts.empty>

Verifie qu'une valeur est vide.

== Syntaxe

- #raw("asserts.empty(value)");
- #raw("[res, msg] = asserts.empty(value)");

== Argument d'entrée

/ value: Valeur a tester.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque value n'a aucun element.

 Les diagnostics incluent les dimensions calculees.


== Exemples

Empty value

``````matlab
asserts.empty([]);
``````

Capture a non-empty value

``````matlab
[res, msg] = asserts.empty(1);
``````


== Voir aussi

#nlink(<assert_functions:asserts.notempty>)[asserts.notempty];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
