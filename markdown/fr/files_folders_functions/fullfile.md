# fullfile

Construit un nom de fichier complet à partir de ses parties.

## Syntaxe

- R = fullfile(part1, ... , partN)

## Argument d'entrée

- part1, ... , partN - a string ou un tableau de chaînes : parties du chemin à concaténer.

## Argument de sortie

- R - un tableau de caractères, tableau de chaînes, ou cellule de vecteurs de caractères.

## Description

<p>R = fullfile(part1, ..., partN) construit un nom de fichier complet à partir des parties fournies.</p>

## Exemple

```matlab
fullfile([nelsonroot(), '/./toto'])
```

## Voir aussi

[fullpath](../files_folders_functions/fullpath.md).

## Historique

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Auteur

Allan CORNET
