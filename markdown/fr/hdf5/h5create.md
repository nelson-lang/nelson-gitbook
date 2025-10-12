# h5create

Créé un jeu de données.

## Syntaxe

- h5create(filename, datasetname, size, Name1, Value1, ..., NameN, ValueN)

## Argument d'entrée

- filename - une chaîne : nom de fichier HDF5.
- datasetname - une chaîne : nom du jeu de données.
- size - un vecteur ligne spécifiant les dimensions du jeu de données.
- Name1, Value1, ..., NameN, ValueN - Arguments paire Nom-Valeur.

## Description

<p>
            h5create crée un jeu de données et spécifie ses dimensions, son type de données et la taille des chunks.</p>

<p>Name-Values pair supported:</p>

<p>Name: Datatype (Nelson® datatypes).</p>

<p>Value: 'double' (par défaut), 'uint64', 'uint32', 'uint16', 'uint8', 'single', 'int64', 'int32', 'int16' ou 'int8'.</p>

<p>Name: ChunkSize, chunking layout</p>

<p>Value: []</p>

<p>Name: Deflate, gzip compression level (0-9)</p>

<p>Value: 0 (default)</p>

<p>Name: FillValue, fill value for numeric data sets.</p>

<p>Value: 0 (default)</p>

<p>Name: Fletcher32, enable fletcher32 checksum filter.</p>

<p>Value: logical: false by default</p>

<p>Name: Shuffle, enable shuffle filter.</p>

<p>Value: logical: false by default</p>

<p>Name: TextEncoding, Character encoding.</p>

<p>Value: 'system' or 'UTF-8' (default).</p>

## Exemple

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
```

## Voir aussi

[h5write](../hdf5/h5write.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
