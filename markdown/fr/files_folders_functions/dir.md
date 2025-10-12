# dir

Renvoie la liste des fichiers.

## Syntaxe

- dir
- dir(dirname)
- dir(dirname, '-s')
- res =dir()
- res = dir(dirname)
- res = dir(dirname, '-s')

## Argument d'entrée

- dirname - a string: nom de fichier ou de répertoire.
- '-s' - a string: inclut également les sous-répertoires.

## Argument de sortie

- res - une structure avec les champs : name, date, bytes, isdir, datenum.

## Description

<p>dir affiche la liste des fichiers et dossiers dans le répertoire courant.</p>

<p>Le caractère * (joker) est supporté dans les noms de fichiers et chemins.</p>

## Exemple

```matlab
res = dir(nelsonroot())
res = dir(nelsonroot(), '-s')
res = dir([nelsonroot(),'/*.m'], '-s')

```

## Voir aussi

[ls](../files_folders_functions/ls.md), [isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md).

## Historique

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Auteur

Allan CORNET
