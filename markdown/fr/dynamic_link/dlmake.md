# dlmake

Appeler l'outil make ou nmake

## 📝 Syntaxe

- [res, message] = dlmake(destinationdir)
- [res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)

## 📥 Argument d'entrée

- destinationdir - une chaîne : répertoire contenant le makefile à exécuter.

## 📤 Argument de sortie

- res - un booléen : true si l'exécution du makefile a réussi.
- message - une chaîne : vide si l'exécution a réussi, sinon un message d'erreur.

## 📄 Description

<b>dlmake</b> fournit un moyen multiplateforme pour construire du code C/C++.

## 💡 Exemple

basic example to call dlmake

```matlab

dest = [tempdir(), 'dlmake_help'];
mkdir(dest);
txt = 'MESSAGE( STATUS "Hello world !")';
filewrite([dest, '/CMakeLists.txt'], txt);
[status, message] = dlmake(dest)

```

## 🔗 Voir aussi

[dlgeneratemake](../dynamic_link/dlgeneratemake.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
