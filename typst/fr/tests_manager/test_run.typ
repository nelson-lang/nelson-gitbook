#import "nelson_help.typ": *

= test\_run <tests_manager:test_run>

Exécute les tests

== Syntaxe

- #raw("status = test_run()");
- #raw("status = test_run([])");
- #raw("status = test_run('minimal_tests')");
- #raw("status = test_run('-stoponfail')");
- #raw("status = test_run(modules)");
- #raw("status = test_run(file_to_test)");
- #raw("status = test_run(module_name, test_name)");
- #raw("status = test_run(modules, '-stoponfail')");
- #raw("status = test_run(file_to_test, '-stoponfail')");
- #raw("status = test_run(modules, option)");
- #raw("status = test_run(file_to_test, option)");
- #raw("status = test_run('minimal_tests', '-stoponfail')");
- #raw("status = test_run('minimal_tests', option)");
- #raw("status = test_run([], '-stoponfail')");
- #raw("status = test_run([], option)");
- #raw("status = test_run(modules, file_output)");
- #raw("status = test_run(file_to_test, file_output)");
- #raw("status = test_run([], file_output)");
- #raw("status = test_run(modules, option, xunitfile)");
- #raw("status = test_run(modules, '-stoponfail', xunitfile)");
- #raw("status = test_run(modules, option, xunitfile, '-stoponfail')");

== Argument d'entrée

/ module\_name: une chaîne ou une cellule de chaînes : nom du module ou liste de modules. Les cellules sont parcourues dans l'ordre des indices linéaires, y compris les vecteurs ligne et colonne.
/ file\_to\_test: une chaîne ou une cellule de chaînes : fichier à tester ou liste de noms de fichiers. Les cellules sont parcourues dans l'ordre des indices linéaires, y compris les vecteurs ligne et colonne.
/ test\_name: une string ou une cellule de chaines : nom de fichier de test dans le repertoire tests du module. L'extension .m est optionnelle.
/ options: une string ou une cellule de chaînes : options supportées 'all', 'all\_tests', 'unitary\_tests', 'nonreg\_tests' ou 'benchs'. La valeur par défaut est 'all\_tests'.
/ xunitfile: une string : nom de fichier pour exporter les résultats en .xml ou .json compatible avec le format Xunit.
/ '-stoponfail': une string : arrêter l'exécution des tests à la première erreur détectée.
/ 'Launcher', value: paire nom\/valeur optionnelle : #strong['default']; (défaut) ou #strong['webview']; pour exécuter les tests tagués ADV-CLI via #strong[nelson-adv-cli --webview]; (backend figures web\/RenderWeb).

== Argument de sortie

/ status: un logique : vrai si les tests passent.

== Description

#strong[test\_run]; est un wrapper de compatibilite au dessus de #strong[nelson.unittest.run];.

 La paire optionnelle #strong['Launcher', 'webview']; peut être placée n'importe où dans la liste d'arguments. Elle route les tests tagués ADV-CLI vers #strong[nelson-adv-cli --webview]; afin que les figures utilisent le backend web headless (RenderWeb) ; les tags CLI et GUI sont inchangés. Le même choix peut être fixé via la variable d'environnement #strong[NELSON\_UNITTEST\_LAUNCHER];.

 #strong[test\_run]; recherche par défaut les fichiers 'test\_\*.m' et 'bug\_\*.m', les exécute et affiche un rapport sur les succès ou les échecs.

 Utilisez l'option explicite #strong[all]; pour inclure les fichiers 'bench\_\*.m' ou utilisez #strong[bench\_run]; pour exécuter les benchmarks séparément.

 Chaque test ou bench est execute par un processus enfant supervise. La reutilisation exige le tag explicite #strong[\<--REUSE PROCESS--\>];.

 Cela permet à la commande courante de continuer, même si le test a créé un environnement instable.

 Cela permet également aux tests d'être indépendants les uns des autres.

 Utilisez #strong[test\_run(module\_name, test\_name)]; pour executer un fichier de test du repertoire tests d'un module.

 Certains tags spéciaux peuvent être insérés dans les fichiers .m pour aider au traitement du test correspondant.

 Ces tags doivent être trouvés dans les commentaires Nelson :

 #strong[\<--NOT FIXED--\>]; This test is skipped because it is a reported bug, but it is not yet fixed.

 #strong[\<--INTERACTIVE TEST--\>]; This test is skipped because it is interactive test.

 #strong[\<--CLI MODE--\>]; This test will be executed by nelson-cli executable (default).

 #strong[\<--ADV-CLI MODE--\>]; This test will be executed by nelson-adv-cli executable.

 #strong[\<--GUI MODE--\>]; This test will be executed by nelson-gui executable.

 #strong[\<--CHECK REF--\>]; This test will compare .ref available in same directory with output generated. see #strong[test\_makeref]; to generate .ref file.

 #strong[\<--ENGLISH IMPOSED--\>]; This test will be executed with the fr\_FR language.

 #strong[\<--WINDOWS ONLY--\>]; This test will be executed only on Windows.

 #strong[\<--MACOS ONLY--\>]; This test will be executed only on Macos.

 #strong[\<--UNIX ONLY--\>]; This test will be executed only on Unix.

 #strong[\<--WITH DISPLAY--\>]; This test will be executed only if a display output is available.

 #strong[\<--RELEASE ONLY--\>]; This test will be executed only if nelson is an release (not in debug mode).

 #strong[\<--EXCEL REQUIRED--\>]; This test will be executed only if excel is detected (on Windows).

 #strong[\<--MPI MODE--\>]; This test will be executed in MPI mode.

 #strong[\<--AUDIO INPUT REQUIRED--\>]; This test will be executed if an audio input is available.

 #strong[\<--AUDIO OUTPUT REQUIRED--\>]; This test will be executed if an audio output is available.

 #strong[\<--AUDIO REQUIRED--\>]; This test requires the audio module (its file functions such as audioread and audiowrite) but no physical audio device. The module is loaded even in a test that belongs to another module; the test is not skipped when no audio device is present.

 #strong[\<--C\/C++ COMPILER REQUIRED--\>]; This test will be executed if an C\/C++ compiler is available.

 #strong[\<--INDEX 64 BIT REQUIRED--\>]; This test will be executed if 64 bit index is available.

 #strong[\<--NO USER MODULES--\>]; This test will be executed without load user modules.

 #strong[\<--IPC REQUIRED--\>]; This test will be executed if IPC is available.

 #strong[\<--SEQUENTIAL TEST REQUIRED--\>]; This test will be executed sequentialy (1 worker).

 #strong[\<--NATIVE ARCHITECTURE TEST REQUIRED--\>]; This test will be executed if application's build and architecture are same.

 #strong[\<--FILE WATCHER REQUIRED--\>]; This test will be executed if file watcher is available.

 #strong[\<--PYTHON ENVIRONMENT REQUIRED--\>]; This test will be executed if python environment is available and configured.

 #strong[\<--JULIA ENVIRONMENT REQUIRED--\>]; This test will be executed if julia environment is available and configured.

 #strong[\<--REUSE PROCESS--\>]; Ce test ou bench autorise le runner a reutiliser le meme processus enfant pour plusieurs fichiers tagues.

 #strong[nelson.unittest.tuneReuse]; audite ces tags avec des campagnes natives isolees et reutilisees. L'ajout exige l'option explicite #strong[AllowAdd]; ; les modifications exigent #strong[Apply];.

 #strong[\<--WEIGHT N--\>]; Poids positif de planification. La file dynamique demarre les fichiers les plus lourds en premier.

 #strong[nelson.unittest.tuneWeights]; peut proposer ou mettre explicitement a jour ces tags depuis les resultats mesures.

 #strong[\<--TIMEOUT N--\>]; Delai d'execution positif par fichier, en secondes, qui remplace le minuteur par defaut pour ce seul fichier. Il ne modifie pas la priorite de planification (c'est #strong[\<--WEIGHT N--\>];). A utiliser pour un test ou un bench legitimement long qui serait sinon interrompu par le minuteur par defaut. L'option globale #strong[Timeout];, lorsqu'elle est definie, reste prioritaire sur le tag.

 Les tests peuvent également être sautés dynamiquement en utilisant la fonction #strong[skip\_testsuite];.

 Pour éviter de bloquer l'application, les tests ont un temps d'exécution de 2 minutes et les benchs ont un temps de 6 minutes, sauf si un tag #strong[\<--TIMEOUT N--\>]; fixe une valeur par fichier.

 #strong[test\_run]; utilise des workers pour executer les tests. Les fichiers non tagues sont executes dans des processus enfants separes ; les fichiers tagues avec #strong[\<--REUSE PROCESS--\>]; peuvent partager un processus enfant.

 Les resultats sont affiches progressivement dans un ordre stable. Chaque ligne contient une icone de statut et son temps d'execution au format #strong[🟢\[ 9.800s\]];.

 Les tests avec#strong[\<--SEQUENTIAL TEST REQUIRED--\>]; sont évalués en dernier.

 Les benchs utilisent un worker lorsque cinq threads ou moins sont disponibles, et deux workers sinon.

 Pour l'API namespaced, utilisez #strong[nelson.unittest.discover];, #strong[nelson.unittest.select];, #strong[nelson.unittest.plan];, #strong[nelson.unittest.run];, #strong[nelson.unittest.tuneWeights];, #strong[nelson.unittest.tuneReuse]; et #strong[nelson.unittest.report];.

 L'executeur interne de fichier de test est prive et n'est pas documente comme fonction utilisateur.


== Exemples

``````matlab
test_run('string');
``````

``````matlab
test_run('string', 'test_strfind')
``````

``````matlab
test_run({'string', 'time'})
``````

``````matlab
test_run({'string', 'time'}, 'all', [tempdir(), 'tests.xml'])
``````

Calibrer les tags de reutilisation des processus et les poids de planification des tests et benches de tous les modules. Une cible vide selectionne tous les modules. Ces commandes modifient les fichiers sources.

``````matlab

nelson.unittest.tuneReuse([], ...
  'Trials', 3, 'AllowAdd', true, 'Apply', true);
nelson.unittest.tuneWeights([], ...
  'Apply', true, 'Workers', 1);

``````


== Voir aussi

#nlink(<tests_manager:bench_run>)[bench\_run];, #nlink(<assert_functions:assert>)[assert];, #nlink(<tests_manager:test_makeref>)[test\_makeref];, #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];, #nlink(<tests_manager:nelson_unittest>)[nelson.unittest];, #nlink(<tests_manager:nelson_unittest_tuneReuse>)[nelson.unittest.tuneReuse];, #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.3.0], [PYTHON ENVIRONMENT REQUIRED tag added],
  [1.4.0], [skip\_testsuite function reference],
  [1.12.0], [JULIA ENVIRONMENT REQUIRED tag added],
)

// Auteur: Allan CORNET
