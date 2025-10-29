# rmdir

Supprime un répertoire.

## 📝 Syntaxe

- rmdir(dirname)
- rmdir(dirname, 's')
- res = rmdir(dirname)
- res = rmdir(dirname, 's')
- [res, msg] = rmdir(dirname)
- [res, msg] = rmdir(dirname, 's')

## 📥 Argument d'entrée

- dirname - a string: nom du répertoire à supprimer.
- 's' - a string: supprime aussi les sous-répertoires.

## 📤 Argument de sortie

- res - un booléen: true ou false.
- msg - a string: message d'erreur ou ''.

## 📄 Description

<b>res = rmdir(dirname)</b> supprime le répertoire <b>dirname</b>.

Si le répertoire n'est pas vide, il faut utiliser l'argument 's'.

## 💡 Exemple

```matlab

mkdir([tempdir(), 'test'])
rmdir([tempdir(), 'test'])

```

## 🔗 Voir aussi

[isdir](../files_folders_functions/isdir.md), [mkdir](../files_folders_functions/mkdir.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
