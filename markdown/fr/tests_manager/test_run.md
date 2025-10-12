# test_run

Exécute les tests

## Syntaxe

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

## Argument d'entrée

- module_name - a string ou une cellule de chaînes : nom du module ou liste de modules.
- file_to_test - une string ou une cellule de chaînes : fichier à tester ou liste de noms de fichiers.
- options - une string ou une cellule de chaînes : options supportées 'all', 'all_tests', 'unitary_tests', 'nonreg_tests' ou 'benchs'.
- xunitfile - une string : nom de fichier pour exporter les résultats en .xml ou .json compatible avec le format Xunit.
- '-stoponfail' - une string : arrêter l'exécution des tests à la première erreur détectée.

## Argument de sortie

- status - un logique : vrai si les tests passent.

## Description

<p>test_run recherche les fichiers 'test_*.m', 'bug_*.m' et 'bench_*.m', les exécute et affiche un rapport sur les succès ou les échecs.</p>

<p>Chaque test ou bench est exécuté dans un processus séparé en utilisant la commande 'unix'.</p>

<p>Cela permet à la commande courante de continuer, même si le test a créé un environnement instable.</p>

<p>Cela permet également aux tests d'être indépendants les uns des autres.</p>

<p>Certains tags spéciaux peuvent être insérés dans les fichiers .m pour aider au traitement du test correspondant.</p>

<p>Ces tags doivent être trouvés dans les commentaires Nelson :</p>

<p>
            <--NOT FIXED--> This test is skipped because it is a reported bug, but it
            is not yet fixed. </p>

<p>
            <--INTERACTIVE TEST--> This test is skipped because it is interactive test.</p>

<p>
            <--CLI MODE--> This test will be executed by nelson-cli executable
            (default).</p>

<p>
            <--ADV-CLI MODE--> This test will be executed by nelson-adv-cli executable.</p>

<p>
            <--GUI MODE--> This test will be executed by nelson-gui executable.</p>

<p>
            <--CHECK REF--> This test will compare .ref available in same directory
            with output generated. see test_makeref to generate .ref file.</p>

<p>
            <--ENGLISH IMPOSED--> This test will be executed with the fr_FR language.</p>

<p>
            <--WINDOWS ONLY--> This test will be executed only on Windows.</p>

<p>
            <--MACOS ONLY--> This test will be executed only on Macos.</p>

<p>
            <--UNIX ONLY--> This test will be executed only on Unix.</p>

<p>
            <--WITH DISPLAY--> This test will be executed only if a display output is
            available.</p>

<p>
            <--RELEASE ONLY--> This test will be executed only if nelson is an release
            (not in debug mode).</p>

<p>
            <--EXCEL REQUIRED--> This test will be executed only if excel is detected
            (on Windows).</p>

<p>
            <--MPI MODE--> This test will be executed in MPI mode.</p>

<p>
            <--AUDIO INPUT REQUIRED--> This test will be executed if an audio input is
            available.</p>

<p>
            <--AUDIO OUTPUT REQUIRED--> This test will be executed if an audio output
            is available.</p>

<p>
            <--C/C++ COMPILER REQUIRED--> This test will be executed if an C/C++
            compiler is available.</p>

<p>
            <--INDEX 64 BIT REQUIRED--> This test will be executed if 64 bit index is
            available.</p>

<p>
            <--NO USER MODULES--> This test will be executed without load user modules.</p>

<p>
            <--IPC REQUIRED--> This test will be executed if IPC is available.</p>

<p>
            <--SEQUENTIAL TEST REQUIRED--> This test will be executed sequentialy (1
            worker).</p>

<p>
            <--NATIVE ARCHITECTURE TEST REQUIRED--> This test will be executed if
            application's build and architecture are same.</p>

<p>
            <--FILE WATCHER REQUIRED--> This test will be executed if file watcher is
            available.</p>

<p></p>

<p>
            <--PYTHON ENVIRONMENT REQUIRED--> This test will be executed if python
            environment is available and configured.</p>

<p></p>

<p></p>

<p>
            <--JULIA ENVIRONMENT REQUIRED--> This test will be executed if julia
            environment is available and configured.</p>

<p></p>

<p>Les tests peuvent également être sautés dynamiquement en utilisant la fonction skip_testsuite.</p>

<p>Pour éviter de bloquer l'application, les tests ont un temps d'exécution de 2 minutes et les benchs ont un temps de 6 minutes.</p>

<p>test_run utilise n workers pour exécuter et accélérer l'exécution des tests.</p>

<p>Les tests avec <--SEQUENTIAL TEST REQUIRED--> sont évalués en dernier.</p>

<p>Les benchs sont évalués séquentiellement.</p>

## Exemples

```matlab
test_run('string');
```

```matlab
test_run({'string', 'time'})
```

```matlab
test_run({'string', 'time'}, 'all', [tempdir(), 'tests.xml'])
```

## Voir aussi

[assert](../assert_functions/assert.md), [test_makeref](../tests_manager/test_makeref.md), [skip_testsuite](../tests_manager/skip_testsuite.md).

## Historique

| Version | Description                           |
| ------- | ------------------------------------- |
| 1.0.0   | version initiale                      |
| 1.3.0   | PYTHON ENVIRONMENT REQUIRED tag added |
| 1.4.0   | skip_testsuite function reference     |
| 1.12.0  | JULIA ENVIRONMENT REQUIRED tag added  |

## Auteur

Allan CORNET
