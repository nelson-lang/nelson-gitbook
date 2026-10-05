#import "nelson_help.typ": *

= bench\_run <tests_manager:bench_run>

Exécuter les benchmarks

== Syntaxe

- #raw("status = bench_run()");
- #raw("status = bench_run(targets)");
- #raw("status = bench_run(targets, Name, Value)");

== Argument d'entrée

/ targets: nom de module, noms de modules, fichier benchmark ou fichiers benchmarks.
/ Name, Value: options acceptées par nelson.unittest.run.

== Argument de sortie

/ status: logique : vrai lorsque tous les benchmarks sélectionnés réussissent.

== Description

#strong[bench\_run]; découvre et exécute uniquement les fichiers 'bench\_\*.m'.

 Les benchmarks sont toujours exécutés dans des processus enfants. Un processus de benchmark est utilisé avec au plus huit threads disponibles ; deux processus sont utilisés au-delà de huit threads.

 Utilisez #strong[nelson.unittest.run]; avec #strong[Kind]; défini à #strong[bench]; pour obtenir des résultats structurés.


== Exemple

``````matlab
bench_run('string')
``````


== Voir aussi

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.

// Auteur: Allan CORNET
