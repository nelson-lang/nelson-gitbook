# h5ls

Liste le contenu d'un fichier HDF5.

## Syntaxe

- h5ls(filename)
- R = h5ls(filename)
- h5ls(filename, location)
- R = h5ls(filename, location)

## Argument d'entrée

- filename - a string: hdf5 filename.
- location - a string: name of the path to list.

## Argument de sortie

- R - un tableau (cell) de chaînes en deux colonnes (la première colonne donne les noms et la seconde le type des éléments listés).

## Description

<p>h5ls liste le contenu d'un fichier HDF5.</p>

## Exemple

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset2',[10 20]);
h5ls([tempdir(), 'myfile.h5'])
R = h5ls([tempdir(), 'myfile.h5'])
```

## Voir aussi

[h5dump](../hdf5/h5dump.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
