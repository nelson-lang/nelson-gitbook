# test_run

Exécute les tests

## 📝 Syntaxe

- status = test_run()
- status = test_run([])
- status = test_run('minimal_tests')
- status = test_run('-stoponfail')
- status = test_run(modules)
- status = test_run(file_to_test)
- status = test_run(modules, '-stoponfail')
- status = test_run(file_to_test, '-stoponfail')
- status = test_run(modules, option)
- status = test_run(file_to_test, option)
- status = test_run('minimal_tests', '-stoponfail')
- status = test_run('minimal_tests', option)
- status = test_run([], '-stoponfail')
- status = test_run([], option)
- status = test_run(modules, file_output)
- status = test_run(file_to_test, file_output)
- status = test_run([], file_output)
- status = test_run(modules, option, xunitfile)
- status = test_run(modules, '-stoponfail', xunitfile)
- status = test_run(modules, option, xunitfile, '-stoponfail')

## 📥 Argument d'entrée

- module_name - a string ou une cellule de chaînes : nom du module ou liste de modules.
- file_to_test - une string ou une cellule de chaînes : fichier à tester ou liste de noms de fichiers.
- options - une string ou une cellule de chaînes : options supportées 'all', 'all_tests', 'unitary_tests', 'nonreg_tests' ou 'benchs'.
- xunitfile - une string : nom de fichier pour exporter les résultats en .xml ou .json compatible avec le format Xunit.
- '-stoponfail' - une string : arrêter l'exécution des tests à la première erreur détectée.

## 📤 Argument de sortie

- status - un logique : vrai si les tests passent.

## 📄 Description

<b>test_run</b> recherche les fichiers 'test\_\*.m', 'bug\_\*.m' et 'bench\_\*.m', les exécute et affiche un rapport sur les succès ou les échecs.

Chaque test ou bench est exécuté dans un processus séparé en utilisant la commande 'unix'.

Cela permet à la commande courante de continuer, même si le test a créé un environnement instable.

Cela permet également aux tests d'être indépendants les uns des autres.

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

Les tests peuvent également être sautés dynamiquement en utilisant la fonction <b>skip_testsuite</b>.

Pour éviter de bloquer l'application, les tests ont un temps d'exécution de 2 minutes et les benchs ont un temps de 6 minutes.

<b>test_run</b> utilise n workers pour exécuter et accélérer l'exécution des tests.

Les tests avec<b>
<--SEQUENTIAL TEST REQUIRED-->
</b> sont évalués en dernier.

Les benchs sont évalués séquentiellement.

## 💡 Exemples

```matlab
test_run('string');
```

```matlab
test_run({'string', 'time'})
```

```matlab
test_run({'string', 'time'}, 'all', [tempdir(), 'tests.xml'])
```

## 🔗 Voir aussi

[assert](../assert_functions/assert.md), [test_makeref](../tests_manager/test_makeref.md), [skip_testsuite](../tests_manager/skip_testsuite.md).

## 🕔 Historique

| Version | 📄 Description                        |
| ------- | ------------------------------------- |
| 1.0.0   | version initiale                      |
| 1.3.0   | PYTHON ENVIRONMENT REQUIRED tag added |
| 1.4.0   | skip_testsuite function reference     |
| 1.12.0  | JULIA ENVIRONMENT REQUIRED tag added  |

<!--
## 👤 Auteur

Allan CORNET
-->
