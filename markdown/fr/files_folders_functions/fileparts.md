# fileparts

Renvoie le chemin, le nom de fichier et l'extension d'un chemin de fichier.

## Syntaxe

- [p, f, e] = fileparts(fullpath)
- p = fileparts(fullpath, 'path')
- f = fileparts(fullpath, 'filename')
- e = fileparts(fullpath, 'extension')

## Argument d'entrée

- fullpath - a string: chemin de fichier ou de répertoire.

## Argument de sortie

- p - a string: chemin du répertoire de fullpath.
- f - a string: nom de fichier sans extension de fullpath.
- e - a string: extension de fullpath.

## Description

<p>[p, f, e] = fileparts(fullpath) sépare le chemin en trois parties : chemin, nom de fichier, extension (incluant le point).</p>

## Exemple

```matlab
[p, f, e] = fileparts([nelsonroot(), '/etc/finish.m'])
p = fileparts([nelsonroot(), '/etc/finish.m'], 'path')
f = fileparts([nelsonroot(), '/etc/finish.m'], 'filename')
e = fileparts([nelsonroot(), '/etc/finish.m'], 'extension')
```

## Voir aussi

[isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md), [pathsep](../files_folders_functions/pathsep.md), [filesep](../files_folders_functions/filesep.md).

## Historique

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Auteur

Allan CORNET
