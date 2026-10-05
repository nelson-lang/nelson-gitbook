#import "nelson_help.typ": *

= nelson.unittest.assume <tests_manager:nelson_unittest_assume>

Sauter un test quand une precondition runtime n'est pas satisfaite.

== Syntaxe

- #raw("nelson.unittest.assume(condition)");
- #raw("nelson.unittest.assume(condition, reason)");

== Argument d'entrée

/ condition: scalaire logique qui doit etre vrai pour continuer le test courant.
/ reason: texte optionnel expliquant pourquoi le test est ignore.

== Description

#strong[nelson.unittest.assume]; marque le test courant comme ignore quand une precondition runtime est fausse.


== Exemple

``````matlab
nelson.unittest.assume(ispc(), 'Requires Windows');
``````


== Voir aussi

#nlink(<tests_manager:nelson_unittest_skip>)[nelson.unittest.skip];, #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];.
