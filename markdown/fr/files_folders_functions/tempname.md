# tempname

Renvoie un nom de fichier temporaire unique.

## Syntaxe

- f = tempname()
- f = tempname(path)

## Argument d'entrée

- path - a string: répertoire existant utilisé à la place de tempdir().

## Argument de sortie

- f - a string: nom de fichier temporaire unique.

## Description

<p>Renvoie le nom d'un fichier temporaire unique.</p>

## Exemple

```matlab
r = tempname()
```

## Voir aussi

[mkdir](../files_folders_functions/mkdir.md), [tempdir](../files_folders_functions/tempdir.md).

## Historique

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Auteur

Allan CORNET
