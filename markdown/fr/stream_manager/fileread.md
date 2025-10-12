# fileread

Lire le contenu d'un fichier en tant que texte.

## Syntaxe

- str = fileread(filename)
- str = fileread(filename, type)
- str = fileread(filename, 'char', eol)
- str = fileread(filename, 'char', eol, encoding)

## Argument d'entrée

- filename - une chaîne : un nom de fichier
- type - une chaîne : 'char', 'cell' ou 'string'. 'cell' convertit le fichier texte en cellule de chaînes. 'string' convertit le fichier texte en tableau de chaînes. 'char' par défaut.
- eol - une chaîne : 'native', 'pc' ou 'unix'. Définit la fin de ligne. 'unix' par défaut.
- encoding - une chaîne : 'UTF-8' (par défaut), 'auto', 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

## Argument de sortie

- str - une chaîne, une cellule de chaînes ou un tableau de chaînes.

## Description

<p>
            fileread lit le contenu d'un fichier en tant que texte.</p>

<p>Si l'encodage est 'auto', Nelson tentera de détecter le meilleur encodage pour lire le contenu du fichier en texte.</p>

## Exemples

```matlab
str = fileread([nelsonroot(),'/CHANGELOG.md'])
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'char')
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'cell')
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'string')

```

```matlab
str = 'живете зело, земля, и иже и како люди';
filewrite([tempdir(), 'example_fileread.txt'], str, 'native', 'windows-1251')
T1 = fileread([tempdir(), 'example_fileread.txt'], 'char', 'native', 'windows-1251')
T2 = fileread([tempdir(), 'example_fileread.txt'], 'string', 'native', 'auto')

```

## Voir aussi

[fgetl](../stream_manager/fgetl.md), [filewrite](../stream_manager/filewrite.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
