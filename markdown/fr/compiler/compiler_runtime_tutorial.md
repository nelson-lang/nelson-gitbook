# compiler_runtime_tutorial

Tutoriel : un runtime pour plusieurs applications.

## 📝 Syntaxe

- compiler.runtime.customInstaller(name, [first, second], 'RuntimeDelivery', 'installer')

## 📄 Description

Executer ces trois blocs dans l'ordre sous Windows, avec Inno Setup 6 sur la machine de construction. L'installateur produit contient le runtime requis par les deux applications, mais pas les applications. Distribuer separement leurs Results.Files.

Cet exemple installe dans un repertoire temporaire prive avec /PORTABLE=1 et le selectionne explicitement par NELSONC_RUNTIME_ROOT. Une installation normale enregistree est decouverte automatiquement par les lanceurs actuels. Le desinstalleur local dans target retire le runtime partage et conserve les executables des applications.

Le bloc 3 utilise les arguments non interactifs du runtime. Pour employer un fichier de reponses, ecrire agreeToLicense=yes, destinationFolder=la cible absolue et outputFile=un nouveau journal sur des lignes separees, puis appeler l'installateur avec -inputfile suivi du chemin du fichier. Conserver /CURRENTUSER /PORTABLE=1 pour cet exemple isole ; omettre /PORTABLE=1 pour enregistrer un runtime partage.

Si le processus d'installation est interrompu, relancer la commande d'installation du bloc 3 avec le meme installateur et la meme cible. Ne pas supprimer .nelson-runtime-update. L'installateur verifie son journal de reprise et termine l'installation avant le lancement des applications. Un autre paquet est refuse tant qu'une mise a jour incomplete subsiste. Les fichiers modifies ou donnees de reprise alterees exigent une inspection, pas un remplacement force ; voir compiler.runtime.customInstaller pour les limites et repertoires de reprise conserves.

## 💡 Exemples

1. Construire deux applications

```matlab
ncc('--help');
work = tempname();
mkdir(work);
entryA = fullfile(work, 'shared_one.m');
entryB = fullfile(work, 'shared_two.m');
filewrite(entryA, 'function shared_one(); disp(''SHARED_ONE_OK''); end');
filewrite(entryB, 'function shared_two(); disp(sin(0)); disp(''SHARED_TWO_OK''); end');
first = compiler.build.standaloneApplication(entryA, 'OutputDir', fullfile(work, 'one'));
second = compiler.build.standaloneApplication(entryB, 'OutputDir', fullfile(work, 'two'));
```

2. Regrouper leur runtime partage

```matlab
compiler.runtime.customInstaller('SharedRuntime', [first, second], ...
  'RuntimeDelivery', 'installer', 'OptionalDependencies', 'none', ...
  'OutputDir', fullfile(work, 'installer'));
installer = fullfile(work, 'installer', 'SharedRuntime.exe');
```

3. Installer et executer les applications

```matlab
target = fullfile(work, 'runtime');
[status, output] = system(['"', installer, ...
  '" -agreeToLicense yes -destinationFolder "', target, '" /CURRENTUSER /PORTABLE=1'], 90);
asserts.istrue(status == 0, output);
previous = getenv('NELSONC_RUNTIME_ROOT');
restore = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previous));
setenv('NELSONC_RUNTIME_ROOT', target);
[status, output] = system(['"', first.Files{1}, '"'], 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_ONE_OK'), output);
disp(output);
[status, output] = system(['"', second.Files{1}, '"'], 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_TWO_OK'), output);
disp(output);
clear restore;
```

## 🔗 Voir aussi

[compiler.runtime.customInstaller](../compiler/compiler.runtime.customInstaller.md), [compiler_installer_tutorial](../compiler/compiler_installer_tutorial.md).

<!--
## 👤 Auteur

Allan CORNET
-->
