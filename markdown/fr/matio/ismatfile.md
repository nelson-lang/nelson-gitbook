# ismatfile

Vérifie si le nom de fichier est un fichier .mat valide

## Syntaxe

- [tf, ver, header] = ismatfile(filename)

## Argument d'entrée

- filename - une chaîne : nom de fichier .mat.

## Argument de sortie

- tf - un logique : true si c'est un fichier .mat valide.
- ver - un tableau de chaînes : version du fichier .mat ("-v7.3", "-v7" ou "-v6").
- header - un tableau de chaînes : en-tête du fichier .mat (date).

## Description

<p>
            ismatfile vérifie si le nom de fichier correspond à un fichier .mat valide.</p>

## Bibliographie

Remerciements à la bibliothèque MATIO (http://sourceforge.net/projects/matio/).

## Exemple

```matlab
A = ones(3, 4);
savemat([tempdir(), 'example_loadmat-v7.3.mat'], 'A', '-v7.3')
savemat([tempdir(), 'example_loadmat-v7.mat'], 'A', '-v7')
savemat([tempdir(), 'example_loadmat-v6.mat'], 'A', '-v6')
[tf, ver] = ismatfile([tempdir(), 'example_loadmat-v7.3.mat'])
[tf, ver] = ismatfile([tempdir(), 'example_loadmat-v7.mat'])
[tf, ver] = ismatfile([tempdir(), 'example_loadmat-v6.mat'])
[tf, ver, header] = ismatfile([tempdir(), 'example_not_existing.mat'])

```

## Voir aussi

[isnh5file](../hdf5/isnh5file.md), [loadmat](../matio/loadmat.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
