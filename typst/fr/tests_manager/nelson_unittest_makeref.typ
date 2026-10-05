#import "nelson_help.typ": *

= nelson.unittest.makeref <tests_manager:nelson_unittest_makeref>

Creer un fichier de reference pour un test.

== Syntaxe

- #raw("status = nelson.unittest.makeref(filename)");

== Argument d'entrée

/ filename: fichier de test utilise pour creer la sortie de reference.

== Argument de sortie

/ status: true si le fichier de reference a ete cree correctement.

== Description

#strong[nelson.unittest.makeref]; cree le fichier de reference utilise par les tests a reference. #strong[test\_makeref]; est l'alias de compatibilite.


== Voir aussi

#nlink(<tests_manager:test_makeref>)[test\_makeref];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.
