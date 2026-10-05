# test\_run

Exécute les tests

## 📝 Syntaxe

- status = test\_run()
- status = test\_run([])
- status = test\_run('minimal\_tests')
- status = test\_run('-stoponfail')
- status = test\_run(modules)
- status = test\_run(file\_to\_test)
- status = test\_run(module\_name, test\_name)
- status = test\_run(modules, '-stoponfail')
- status = test\_run(file\_to\_test, '-stoponfail')
- status = test\_run(modules, option)
- status = test\_run(file\_to\_test, option)
- status = test\_run('minimal\_tests', '-stoponfail')
- status = test\_run('minimal\_tests', option)
- status = test\_run([], '-stoponfail')
- status = test\_run([], option)
- status = test\_run(modules, file\_output)
- status = test\_run(file\_to\_test, file\_output)
- status = test\_run([], file\_output)
- status = test\_run(modules, option, xunitfile)
- status = test\_run(modules, '-stoponfail', xunitfile)
- status = test\_run(modules, option, xunitfile, '-stoponfail')

## 📥 Argument d'entrée

- module\_name - une chaîne ou une cellule de chaînes : nom du module ou liste de modules. Les cellules sont parcourues dans l'ordre des indices linéaires, y compris les vecteurs ligne et colonne.
- file\_to\_test - une chaîne ou une cellule de chaînes : fichier à tester ou liste de noms de fichiers. Les cellules sont parcourues dans l'ordre des indices linéaires, y compris les vecteurs ligne et colonne.
- test\_name - une string ou une cellule de chaines : nom de fichier de test dans le repertoire tests du module. L'extension .m est optionnelle.
- options - une string ou une cellule de chaînes : options supportées 'all', 'all\_tests', 'unitary\_tests', 'nonreg\_tests' ou 'benchs'. La valeur par défaut est 'all\_tests'.
- xunitfile - une string : nom de fichier pour exporter les résultats en .xml ou .json compatible avec le format Xunit.
- '-stoponfail' - une string : arrêter l'exécution des tests à la première erreur détectée.
- 'Launcher', value - paire nom/valeur optionnelle : <b>'default'</b> (défaut) ou <b>'webview'</b> pour exécuter les tests tagués ADV-CLI via <b>nelson-adv-cli --webview</b> (backend figures web/RenderWeb).

## 📤 Argument de sortie

- status - un logique : vrai si les tests passent.

## 📄 Description


<b>test\_run</b> est un wrapper de compatibilite au dessus de <b>nelson.unittest.run</b>. 

La paire optionnelle <b>'Launcher', 'webview'</b> peut être placée n'importe où dans la liste d'arguments. Elle route les tests tagués ADV-CLI vers <b>nelson-adv-cli --webview</b>afin que les figures utilisent le backend web headless (RenderWeb) ; les tags CLI et GUI sont inchangés. Le même choix peut être fixé via la variable d'environnement <b>NELSON\_UNITTEST\_LAUNCHER</b>. 

<b>test\_run</b> recherche par défaut les fichiers 'test\_\*.m' et 'bug\_\*.m', les exécute et affiche un rapport sur les succès ou les échecs. 

Utilisez l'option explicite <b>all</b> pour inclure les fichiers 'bench\_\*.m' ou utilisez <b>bench\_run</b> pour exécuter les benchmarks séparément. 

Chaque test ou bench est execute par un processus enfant supervise. La reutilisation exige le tag explicite <b><--REUSE PROCESS--></b>. 

Cela permet à la commande courante de continuer, même si le test a créé un environnement instable. 

Cela permet également aux tests d'être indépendants les uns des autres. 

Utilisez <b>test\_run(module\_name, test\_name)</b> pour executer un fichier de test du repertoire tests d'un module. 

Certains tags spéciaux peuvent être insérés dans les fichiers .m pour aider au traitement du test correspondant. 

Ces tags doivent être trouvés dans les commentaires Nelson : 

<b>
        <--NOT FIXED-->
      </b> This test is skipped because it is a reported bug, but it is not yet fixed. 

<b>
        <--INTERACTIVE TEST-->
      </b> This test is skipped because it is interactive test. 

<b>
        <--CLI MODE-->
      </b> This test will be executed by nelson-cli executable (default). 

<b>
        <--ADV-CLI MODE-->
      </b> This test will be executed by nelson-adv-cli executable. 

<b>
        <--GUI MODE-->
      </b> This test will be executed by nelson-gui executable. 

<b>
        <--CHECK REF-->
      </b> This test will compare .ref available in same directory with output generated. see <b>test\_makeref</b> to generate .ref file. 

<b>
        <--ENGLISH IMPOSED-->
      </b> This test will be executed with the fr\_FR language. 

<b>
        <--WINDOWS ONLY-->
      </b> This test will be executed only on Windows. 

<b>
        <--MACOS ONLY-->
      </b> This test will be executed only on Macos. 

<b>
        <--UNIX ONLY-->
      </b> This test will be executed only on Unix. 

<b>
        <--WITH DISPLAY-->
      </b> This test will be executed only if a display output is available. 

<b>
        <--RELEASE ONLY-->
      </b> This test will be executed only if nelson is an release (not in debug mode). 

<b>
        <--EXCEL REQUIRED-->
      </b> This test will be executed only if excel is detected (on Windows). 

<b>
        <--MPI MODE-->
      </b> This test will be executed in MPI mode. 

<b>
        <--AUDIO INPUT REQUIRED-->
      </b> This test will be executed if an audio input is available. 

<b>
        <--AUDIO OUTPUT REQUIRED-->
      </b> This test will be executed if an audio output is available. 

<b>
        <--AUDIO REQUIRED-->
      </b> This test requires the audio module (its file functions such as audioread and audiowrite) but no physical audio device. The module is loaded even in a test that belongs to another module; the test is not skipped when no audio device is present. 

<b>
        <--C/C++ COMPILER REQUIRED-->
      </b> This test will be executed if an C/C++ compiler is available. 

<b>
        <--INDEX 64 BIT REQUIRED-->
      </b> This test will be executed if 64 bit index is available. 

<b>
        <--NO USER MODULES-->
      </b> This test will be executed without load user modules. 

<b>
        <--IPC REQUIRED-->
      </b> This test will be executed if IPC is available. 

<b>
        <--SEQUENTIAL TEST REQUIRED-->
      </b> This test will be executed sequentialy (1 worker). 

<b>
        <--NATIVE ARCHITECTURE TEST REQUIRED-->
      </b> This test will be executed if application's build and architecture are same. 

<b>
        <--FILE WATCHER REQUIRED-->
      </b> This test will be executed if file watcher is available. 

<b>
        <--PYTHON ENVIRONMENT REQUIRED-->
      </b> This test will be executed if python environment is available and configured. 

<b>
        <--JULIA ENVIRONMENT REQUIRED-->
      </b> This test will be executed if julia environment is available and configured. 

<b>
        <--REUSE PROCESS-->
      </b> Ce test ou bench autorise le runner a reutiliser le meme processus enfant pour plusieurs fichiers tagues. 

<b>nelson.unittest.tuneReuse</b> audite ces tags avec des campagnes natives isolees et reutilisees. L'ajout exige l'option explicite <b>AllowAdd</b> ; les modifications exigent <b>Apply</b>. 

<b>
        <--WEIGHT N-->
      </b> Poids positif de planification. La file dynamique demarre les fichiers les plus lourds en premier. 

<b>nelson.unittest.tuneWeights</b> peut proposer ou mettre explicitement a jour ces tags depuis les resultats mesures. 

<b>
        <--TIMEOUT N-->
      </b> Delai d'execution positif par fichier, en secondes, qui remplace le minuteur par defaut pour ce seul fichier. Il ne modifie pas la priorite de planification (c'est <b><--WEIGHT N--></b>). A utiliser pour un test ou un bench legitimement long qui serait sinon interrompu par le minuteur par defaut. L'option globale <b>Timeout</b>, lorsqu'elle est definie, reste prioritaire sur le tag. 

Les tests peuvent également être sautés dynamiquement en utilisant la fonction <b>skip\_testsuite</b>. 

Pour éviter de bloquer l'application, les tests ont un temps d'exécution de 2 minutes et les benchs ont un temps de 6 minutes, sauf si un tag <b><--TIMEOUT N--></b> fixe une valeur par fichier. 

<b>test\_run</b> utilise des workers pour executer les tests. Les fichiers non tagues sont executes dans des processus enfants separes ; les fichiers tagues avec <b><--REUSE PROCESS--></b> peuvent partager un processus enfant. 

Les resultats sont affiches progressivement dans un ordre stable. Chaque ligne contient une icone de statut et son temps d'execution au format <b>🟢[   9.800s]</b>. 

Les tests avec<b>
        <--SEQUENTIAL TEST REQUIRED-->
      </b> sont évalués en dernier. 

Les benchs utilisent un worker lorsque cinq threads ou moins sont disponibles, et deux workers sinon. 

Pour l'API namespaced, utilisez <b>nelson.unittest.discover</b>, <b>nelson.unittest.select</b>, <b>nelson.unittest.plan</b>, <b>nelson.unittest.run</b>, <b>nelson.unittest.tuneWeights</b>, <b>nelson.unittest.tuneReuse</b> et <b>nelson.unittest.report</b>. 

L'executeur interne de fichier de test est prive et n'est pas documente comme fonction utilisateur.

## 💡 Exemples



```matlab
test_run('string');
```


```matlab
test_run('string', 'test_strfind')
```


```matlab
test_run({'string', 'time'})
```


```matlab
test_run({'string', 'time'}, 'all', [tempdir(), 'tests.xml'])
```
Calibrer les tags de reutilisation des processus et les poids de planification
        des tests et benches de tous les modules. Une cible vide selectionne tous les modules. Ces commandes
        modifient les fichiers sources.

```matlab

nelson.unittest.tuneReuse([], ...
  'Trials', 3, 'AllowAdd', true, 'Apply', true);
nelson.unittest.tuneWeights([], ...
  'Apply', true, 'Workers', 1);

```


## 🔗 Voir aussi

[bench_run](../tests_manager/bench_run.md), [assert](../assert_functions/assert.md), [test_makeref](../tests_manager/test_makeref.md), [skip_testsuite](../tests_manager/test_skip_testsuite.md), [nelson.unittest](../tests_manager/nelson_unittest.md), [nelson.unittest.tuneReuse](../tests_manager/nelson_unittest_tuneReuse.md), [nelson.unittest.tuneWeights](../tests_manager/nelson_unittest_tuneWeights.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.3.0   | PYTHON ENVIRONMENT REQUIRED tag added |
| 1.4.0   | skip_testsuite function reference |
| 1.12.0   | JULIA ENVIRONMENT REQUIRED tag added |

<!--
## 👤 Auteur

Allan CORNET
-->
