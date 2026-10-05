#import "nelson_help.typ": *

= skip\_testsuite <tests_manager:test_skip_testsuite>

Sauter la suite de tests selon une condition

== Syntaxe

- #raw("skip_testsuite()");
- #raw("skip_testsuite(reason)");
- #raw("skip_testsuite(condition)");
- #raw("skip_testsuite(condition, reason)");

== Argument d'entrée

/ condition: logique: vrai (par défaut) ou faux
/ reason: une chaîne : raison pour laquelle la suite de tests est sautée

== Description

La fonction#strong[skip\_testsuite]; permet de sauter une suite de tests en fonction d'une condition spécifiée.

 #strong[skip\_testsuite]; est un wrapper de compatibilite au dessus de #strong[nelson.unittest.skip];.

 #strong[condition]; : Une expression booléenne qui détermine si la suite de tests doit être sautée. Si #strong[condition]; évalue à #strong[true];, la suite de tests sera sautée.

 #strong[reason]; : Une chaîne expliquant la raison du saut de la suite de tests. Ce paramètre est utile pour fournir du contexte aux autres développeurs ou pour vous-même si la suite est sautée.


== Exemple

``````matlab
skip_testsuite(true, 'Test skipped')
``````


== Voir aussi

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:nelson_unittest>)[nelson.unittest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.4.0], [version initiale],
)

// Auteur: Allan CORNET
