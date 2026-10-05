#import "nelson_help.typ": *

= asserts.fields <assert_functions:asserts.fields>

Verifie l'ensemble exact des champs d'une structure.

== Syntaxe

- #raw("asserts.fields(s, expectedFields)");
- #raw("[res, msg] = asserts.fields(s, expectedFields)");

== Argument d'entrée

/ s: Valeur structure.
/ expectedFields: Liste exacte des noms de champs. L'ordre des champs est ignore.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque s n'a aucun champ manquant et aucun champ supplementaire.

 Utiliser asserts.hasFields lorsque les champs supplementaires sont autorises.


== Exemples

Exact field set

``````matlab
S = struct('a', 1, 'b', 2); asserts.fields(S, {'b', 'a'});
``````

Capture an extra field

``````matlab
S = struct('a', 1, 'b', 2); [res, msg] = asserts.fields(S, {'a'});
``````


== Voir aussi

#nlink(<assert_functions:asserts.hasFields>)[asserts.hasFields];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
