# compiler_linux_runtime_tutorial

Tutoriel : un runtime minimal partage sous Linux.

## 📝 Syntaxe

- compiler.runtime.customInstaller(name, [first, second], 'RuntimeDelivery', 'installer')

## 📄 Description

Executer ces blocs dans l'ordre sous Linux avec le module optionnel compiler installe. Le .install contient uniquement le runtime commun, pas les applications. Ce parcours utilise une configuration privee et une destination temporaire accessible en ecriture ; aucun privilege administrateur ni changement global de PATH n'est necessaire.

Les deux executables trouvent le runtime installe grace a l'enregistrement de l'empreinte de leur interpreteur. L'exemple retire ensuite ce runtime avec son desinstalleur independant, en conservant les executables des applications. Les verrous, un recu de fin et les eventuelles donnees utilisateur restent dans la destination.

Apres interruption, relancer la meme commande d'installation avec la meme destination et la meme configuration XDG. Ne pas supprimer .nelson-runtime/update.json pour contourner la reprise. Voir compiler.runtime.customInstaller pour les limites de verification et les fichiers temporaires conserves.

Apres une desinstallation interrompue, relancer .nelson-runtime/uninstall. Son journal distinct remove.json permet les reprises successives. Un recu complete indique que la suppression est terminee ; le desinstalleur se supprime apres enregistrement de cet etat. Ne pas modifier ni supprimer le journal. Un nouvel installateur peut reutiliser le dossier uniquement s'il ne contient aucun fichier utilisateur conserve ni residu inconnu.

## 💡 Exemples

1. Construire deux applications

```matlab
ncc('--help');
work = tempname();
mkdir(work);
entryA = fullfile(work, 'shared_one.m');
entryB = fullfile(work, 'shared_two.m');
filewrite(entryA, 'function shared_one(); disp(''SHARED_ONE_OK''); disp(nelsonroot()); end');
filewrite(entryB, 'function shared_two(); disp(sin(0)); disp(''SHARED_TWO_OK''); disp(nelsonroot()); end');
first = compiler.build.standaloneApplication(entryA, 'OutputDir', fullfile(work, 'one'));
second = compiler.build.standaloneApplication(entryB, 'OutputDir', fullfile(work, 'two'));
```

2. Creer le runtime partage et conserver les applications

```matlab
compiler.runtime.customInstaller('SharedRuntime', [first, second], ...
  'RuntimeDelivery', 'installer', 'OptionalDependencies', 'none', ...
  'OutputDir', fullfile(work, 'installer'));
installer = fullfile(work, 'installer', 'SharedRuntime.install');
applications = fullfile(work, 'applications');
mkdir(applications);
copyfile(first.Files{1}, applications);
copyfile(second.Files{1}, applications);
applicationA = fullfile(applications, 'shared_one');
applicationB = fullfile(applications, 'shared_two');
```

3. Installer, rechercher, executer et desinstaller

```matlab
target = fullfile(work, 'runtime');
oldConfig = getenv('XDG_CONFIG_HOME');
oldRoot = getenv('NELSONC_RUNTIME_ROOT');
oldPath = getenv('NELSON_RUNTIME_PATH');
oldLibraries = getenv('LD_LIBRARY_PATH');
restoreConfig = onCleanup(@() setenv('XDG_CONFIG_HOME', oldConfig));
restoreRoot = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', oldRoot));
restorePath = onCleanup(@() setenv('NELSON_RUNTIME_PATH', oldPath));
restoreLibraries = onCleanup(@() setenv('LD_LIBRARY_PATH', oldLibraries));
setenv('XDG_CONFIG_HOME', fullfile(work, 'configuration'));
setenv('NELSONC_RUNTIME_ROOT', '');
setenv('NELSON_RUNTIME_PATH', '');
setenv('LD_LIBRARY_PATH', '');
quote = char(39);
quoted = @(text) [quote, strrep(text, quote, char([39 34 39 34 39])), quote];
[status, output] = system([quoted(installer), ' -agreeToLicense yes -destinationFolder ', quoted(target)], 180);
asserts.istrue(status == 0, output);
[status, output] = system(quoted(applicationA), 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_ONE_OK') && contains(output, target), output);
[status, output] = system(quoted(applicationB), 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_TWO_OK') && contains(output, target), output);
[status, output] = system(quoted(fullfile(target, '.nelson-runtime', 'uninstall')), 60);
asserts.istrue(status == 0, output);
asserts.isfalse(isfile(fullfile(target, 'runtime.json')));
receipt = jsondecode(fileread(fullfile(target, '.nelson-runtime', 'remove.json')));
asserts.isequal(receipt.phase, 'complete');
asserts.isfalse(isfile(fullfile(target, '.nelson-runtime', 'uninstall')));
asserts.istrue(isfile(applicationA) && isfile(applicationB));
clear restoreConfig restoreRoot restorePath restoreLibraries;
disp('LINUX_SHARED_RUNTIME_TUTORIAL_OK');
```

## 🔗 Voir aussi

[compiler.runtime.customInstaller](../compiler/compiler.runtime.customInstaller.md), [compiler_linux_installer_tutorial](../compiler/compiler_linux_installer_tutorial.md).

<!--
## 👤 Auteur

Allan CORNET
-->
