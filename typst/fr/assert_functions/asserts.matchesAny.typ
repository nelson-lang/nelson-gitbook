#import "nelson_help.typ": *

= asserts.matchesAny <assert_functions:asserts.matchesAny>

Verifie qu'un texte correspond a au moins une expression reguliere.

== Syntaxe

- #raw("asserts.matchesAny(text, patterns)");
- #raw("[res, msg] = asserts.matchesAny(text, patterns)");

== Argument d'entrée

/ text: Vecteur de caracteres ou scalaire string a tester.
/ patterns: Motifs d'expressions regulieres. Au moins un motif doit correspondre.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsqu'au moins une expression reguliere correspond a text.

 Les expressions regulieres invalides levent immediatement une erreur d'argument.


== Exemples

One expression matches

``````matlab
asserts.matchesAny('abc123', {'^xyz', '[0-9]+$'});
``````

Capture missing matches

``````matlab
[res, msg] = asserts.matchesAny('abc123', {'^xyz', 'zzz'});
``````


== Voir aussi

#nlink(<assert_functions:asserts.matchesAll>)[asserts.matchesAll];, #nlink(<assert_functions:asserts.match>)[asserts.match];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
