# rmfile

Supprime un fichier.

## 📝 Syntaxe

- rmfile(filename)
- res = rmfile(filename)
- [res, msg] = rmfile(filename)
- [res, msg] = rmfile(filename)

## 📥 Argument d'entrée

- filename - a string: nom du fichier.

## 📤 Argument de sortie

- res - un booléen: true ou false.
- msg - a string: message d'erreur ou ''.

## 📄 Description

<b>res = rmfile(filename)</b> supprime le fichier <b>filename</b>.

## 💡 Exemple

```matlab
fd = fopen([tempdir(), 'test_rmfile.txt'], 'wt')
fclose(fd)
isfile([tempdir(), 'test_rmfile.txt'])
rmfile([tempdir(), 'test_rmfile.txt'])
isfile([tempdir(), 'test_rmfile.txt'])

```

## 🔗 Voir aussi

[isfile](../files_folders_functions/isfile.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
