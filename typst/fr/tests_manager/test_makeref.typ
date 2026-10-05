#import "nelson_help.typ": *

= test\_makeref <tests_manager:test_makeref>

Crée un fichier '.ref' pour un test

== Syntaxe

- #raw("status = test_makeref(filename)");

== Argument d'entrée

/ filename: a string: nom de fichier, un fichier de test.

== Argument de sortie

/ status: un logique: vrai si le .ref a été généré.

== Description

#strong[test\_makeref]; crée un fichier '.ref' à partir d'un fichier de test.

 #strong[test\_makeref]; est un wrapper de compatibilite au dessus de #strong[nelson.unittest.makeref];.

 Le fichier de test doit contenir la balise \<--CHECK REF--\>.


== Voir aussi

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:nelson_unittest>)[nelson.unittest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
