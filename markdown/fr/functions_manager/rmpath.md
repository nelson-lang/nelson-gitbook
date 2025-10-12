# rmpath

Supprime un répertoire du chemin de recherche.

## Syntaxe

- rmpath(dirname)
- previouspaths = rmpath(dirname)

## Argument d'entrée

- dirname - nom du répertoire à supprimer

## Argument de sortie

- previouspaths - une chaîne : chemin avant la suppression des chemins spécifiés

## Description

<p>
            rmpath supprime un répertoire du chemin de recherche.</p>

## Exemple

```matlab
path
addpath(tempdir())
path
rmpath(tempdir())
path
```

## Voir aussi

[path](../functions_manager/path.md), [addpath](../functions_manager/addpath.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
