#import "nelson_help.typ": *

= asserts.notempty <assert_functions:asserts.notempty>

Verifie qu'une valeur n'est pas vide.

== Syntaxe

- #raw("asserts.notempty(value)");
- #raw("[res, msg] = asserts.notempty(value)");

== Argument d'entrée

/ value: Valeur a tester.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque value a au moins un element.

 Utiliser asserts.empty pour l'assertion inverse.


== Exemples

Non-empty value

``````matlab
asserts.notempty(1);
``````

Capture an empty value

``````matlab
[res, msg] = asserts.notempty([]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.empty>)[asserts.empty];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
