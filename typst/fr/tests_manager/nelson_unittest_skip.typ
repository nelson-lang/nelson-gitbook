#import "nelson_help.typ": *

= nelson.unittest.skip <tests_manager:nelson_unittest_skip>

Ignorer le test courant.

== Syntaxe

- #raw("nelson.unittest.skip()");
- #raw("nelson.unittest.skip(reason)");
- #raw("nelson.unittest.skip(condition, reason)");

== Description

#strong[nelson.unittest.skip]; marque le test courant comme ignore. #strong[skip\_testsuite]; est l'alias de compatibilite.


== Voir aussi

#nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];, #nlink(<tests_manager:nelson_unittest_assume>)[nelson.unittest.assume];.
