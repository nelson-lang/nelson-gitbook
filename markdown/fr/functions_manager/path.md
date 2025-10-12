# path

Modifie ou affiche le chemin de chargement de Nelson.

## Syntaxe

- path()
- p = path()
- path(dirname)
- path(path(), dirname)
- path(dirname, path())

## Argument d'entrée

- dirname - un nom de répertoire ou une suite de noms de répertoires utilisant pathsep()

## Argument de sortie

- p - chaîne : les chemins spécifiés

## Description

<p>
            path modifie ou affiche le chemin de chargement de Nelson.</p>

## Exemple

```matlab
path
p = path()
path(p, tempdir())
path
path(p)

```

## Voir aussi

[rmpath](../functions_manager/rmpath.md), [addpath](../functions_manager/addpath.md), [rehash](../functions_manager/rehash.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
