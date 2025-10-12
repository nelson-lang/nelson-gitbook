# addpath

Ajouter des répertoires au chemin de recherche des fonctions.

## Syntaxe

- addpath(dirname)
- addpath(dirname, ..., dirname)
- addpath(dirname, ..., dirname, '-begin')
- addpath(dirname, ..., dirname, '-end')
- addpath(dirname, ..., dirname, '-frozen')
- previous = addpath(dirname)
- previous = addpath(dirname, ..., dirname)
- previous = addpath(dirname, ..., dirname, '-begin')
- previous = addpath(dirname, ..., dirname, '-end')

## Argument d'entrée

- dirname - une chaîne : un répertoire
- '-end' or '-begin' - ajouter dirname à la fin ou au début de la liste.
- '-frozen' - désactive la détection de changement de dossier pour les dossiers ajoutés ou modifiés.

## Argument de sortie

- previous - retourne le chemin précédent avant ajout

## Description

<p>
            addpath ajoute des répertoires au chemin de recherche.</p>

<p>Il est également possible d'ajouter des listes de noms de répertoires séparés par pathsep.</p>

<p>Les chemins inexistants ne seront pas ajoutés et un avertissement sera émis.</p>

<p>Les observateurs de fichiers sont désactivés pour les modules internes.</p>

## Exemple

```matlab
path()
addpath(tempdir())
path
rmpath(tempdir())
path
```

## Voir aussi

[path](../functions_manager/path.md), [rmpath](../functions_manager/rmpath.md), [restoredefaultpath](../functions_manager/restoredefaultpath.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
