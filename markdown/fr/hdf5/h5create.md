# h5create

Créé un jeu de données.

## 📝 Syntaxe

- h5create(filename, datasetname, size, Name1, Value1, ..., NameN, ValueN)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier HDF5.
- datasetname - une chaîne : nom du jeu de données.
- size - un vecteur ligne spécifiant les dimensions du jeu de données.
- Name1, Value1, ..., NameN, ValueN - Arguments paire Nom-Valeur.

## 📄 Description

<b>h5create</b> crée un jeu de données et spécifie ses dimensions, son type de données et la taille des chunks.

Name-Values pair supported:

Name: Datatype (Nelson® datatypes).

Value: 'double' (par défaut), 'uint64', 'uint32', 'uint16', 'uint8', 'single', 'int64', 'int32', 'int16' ou 'int8'.

Name: ChunkSize, chunking layout

Value: []

Name: Deflate, gzip compression level (0-9)

Value: 0 (default)

Name: FillValue, fill value for numeric data sets.

Value: 0 (default)

Name: Fletcher32, enable fletcher32 checksum filter.

Value: logical: false by default

Name: Shuffle, enable shuffle filter.

Value: logical: false by default

Name: TextEncoding, Character encoding.

Value: 'system' or 'UTF-8' (default).

## 💡 Exemple

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
```

## 🔗 Voir aussi

[h5write](../hdf5/h5write.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
