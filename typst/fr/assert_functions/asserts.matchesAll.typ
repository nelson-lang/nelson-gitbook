#import "nelson_help.typ": *

= asserts.matchesAll <assert_functions:asserts.matchesAll>

Verifie qu'un texte correspond a toutes les expressions regulieres.

== Syntaxe

- #raw("asserts.matchesAll(text, patterns)");
- #raw("[res, msg] = asserts.matchesAll(text, patterns)");

== Argument d'entrée

/ text: Vecteur de caracteres ou scalaire string a tester.
/ patterns: Motifs d'expressions regulieres. Chaque motif doit correspondre.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque chaque expression reguliere correspond a text.

 Les expressions regulieres invalides levent immediatement une erreur d'argument.


== Exemples

All expressions match

``````matlab
asserts.matchesAll('abc123', {'^abc', '[0-9]+$'});
``````

Capture a missing match

``````matlab
[res, msg] = asserts.matchesAll('abc123', {'^abc', '^xyz'});
``````


== Voir aussi

#nlink(<assert_functions:asserts.matchesAny>)[asserts.matchesAny];, #nlink(<assert_functions:asserts.match>)[asserts.match];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
