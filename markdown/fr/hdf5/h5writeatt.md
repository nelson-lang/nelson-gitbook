# h5writeatt

Écrit un attribut HDF5.

## Syntaxe

- h5writeatt(filename, location, attname, attvalue)
- h5writeatt(filename, location, attname, attvalue, 'TextEncoding', encoding)

## Argument d'entrée

- filename - a string: hdf5 filename.
- location - a string: full path identifying a group or variable.
- attname - une chaîne : nom d'un attribut.
- attvalue - une valeur : types supportés : double, uint64, uint32, uint16, uint8, single, int64, int32, int16 ou int8.
- encoding - une chaîne : 'system' ou 'UTF-8' ('UTF-8' par défaut).

## Description

<p>h5writeatt écrit l'attribut nommé attname avec la valeur attvalue dans le fichier HDF5.</p>

## Exemple

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5writeatt([tempdir(), 'myfile.h5'],'/','creation_date', '26-Dec-2018 16:55:32')
```

## Voir aussi

[h5readatt](../hdf5/h5readatt.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
