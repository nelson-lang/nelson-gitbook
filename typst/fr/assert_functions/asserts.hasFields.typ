#import "nelson_help.typ": *

= asserts.hasFields <assert_functions:asserts.hasFields>

Verifie qu'une structure possede tous les champs attendus.

== Syntaxe

- #raw("asserts.hasFields(s, expectedFields)");
- #raw("[res, msg] = asserts.hasFields(s, expectedFields)");

== Argument d'entrée

/ s: Valeur structure.
/ expectedFields: Liste de noms de champs sous forme de vecteur de caracteres, scalaire string, tableau de strings ou cellule de vecteurs de caracteres.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque chaque champ attendu existe dans s.

 Les champs supplementaires dans s sont autorises.


== Exemples

Fields present

``````matlab
S = struct('a', 1, 'b', 2); asserts.hasFields(S, {'a', 'b'});
``````

Capture a missing field

``````matlab
S = struct('a', 1); [res, msg] = asserts.hasFields(S, {'a', 'b'});
``````


== Voir aussi

#nlink(<assert_functions:asserts.hasField>)[asserts.hasField];, #nlink(<assert_functions:asserts.fields>)[asserts.fields];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
