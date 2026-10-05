#import "nelson_help.typ": *

= nelson.unittest.discover <tests_manager:nelson_unittest_discover>

Decouvrir les fichiers de test et retourner une suite structuree.

== Syntaxe

- #raw("suite = nelson.unittest.discover(targets)");
- #raw("suite = nelson.unittest.discover(targets, Name, Value)");

== Argument d'entrée

/ targets: nom de module, dossier, nom de fichier ou tableau de cellules de cibles.
/ Name, Value: option de selection #strong[Kind];.

== Argument de sortie

/ suite: structure TestSuite contenant les entrees TestCase decouvertes.

== Description

#strong[nelson.unittest.discover]; trouve les fichiers #strong[test\_\*.m];, #strong[bug\_\*.m]; et #strong[bench\_\*.m];.

 La decouverte relit les tags des fichiers a chaque appel et renseigne les champs TestCase stables comme id, module, file, name, kind, tags, mode, resources, timeout et weight.

 Pour un module externe, le champ module provient du manifeste module.json et la racine est repérée par le fichier etc\/startup.m englobant. Les installations versionnées, les dossiers temporaires de préparation des paquets et les tests imbriqués sont pris en charge. Les modules fournis avec Nelson et les anciens modules enregistrés sont identifiés par leur racine. Un nom de dossier seul ne suffit pas ; sans identité valide, le champ module est vide.


== Exemple

``````matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');

``````


== Voir aussi

#nlink(<tests_manager:nelson_unittest>)[nelson.unittest];, #nlink(<tests_manager:nelson_unittest_select>)[nelson.unittest.select];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.
