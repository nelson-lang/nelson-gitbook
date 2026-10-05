#import "nelson_help.typ": *

= asserts.hasField <assert_functions:asserts.hasField>

Verifie qu'une structure possede un champ.

== Syntaxe

- #raw("asserts.hasField(s, fieldName)");
- #raw("[res, msg] = asserts.hasField(s, fieldName)");

== Argument d'entrée

/ s: Valeur structure.
/ fieldName: Nom de champ attendu sous forme de vecteur de caracteres ou scalaire string.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque s contient fieldName.

 Les entrees non structure invalides levent immediatement une erreur d'argument.


== Exemples

Existing field

``````matlab
S = struct('a', 1); asserts.hasField(S, 'a');
``````

Capture a missing field

``````matlab
S = struct('a', 1); [res, msg] = asserts.hasField(S, 'b');
``````


== Voir aussi

#nlink(<assert_functions:asserts.hasFields>)[asserts.hasFields];, #nlink(<assert_functions:asserts.fields>)[asserts.fields];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
