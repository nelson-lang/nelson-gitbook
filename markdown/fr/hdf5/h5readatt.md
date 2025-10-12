# h5readatt

Lit un attribut HDF5.

## Syntaxe

- attval = h5readatt(filename, location, attname)

## Argument d'entrée

- filename - a string: hdf5 filename.
- location - une chaîne : chemin complet identifiant un groupe ou une variable.
- attname - une chaîne : nom d'un attribut.

## Argument de sortie

- attval - une variable Nelson.

## Description

<p>
            h5readatt reads attribute named attname from the HDF5 file.</p>

## Exemple

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5writeatt([tempdir(), 'myfile.h5'],'/','creation_date', '26-Dec-2018 16:55:32')
h5readatt([tempdir(), 'myfile.h5'],'/','creation_date')
```

## Voir aussi

[h5writeatt](../hdf5/h5writeatt.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
