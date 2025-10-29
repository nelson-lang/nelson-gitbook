# h5write

Écrit un jeu de données HDF5.

## 📝 Syntaxe

- h5write(filename, location, value)

## 📥 Argument d'entrée

- filename - a string: hdf5 filename.
- location - une chaîne : chemin complet identifiant un jeu de données.
- value - une valeur : types supportés : double, uint64, uint32, uint16, uint8, single, int64, int32, int16, int8 ou tableau de caractères.

## 📄 Description

<b>h5write</b> écrit des données dans l'ensemble du jeu de données <b>location</b> dans le fichier HDF5.

## 💡 Exemple

```matlab
h5filename = [tempdir(), 'doc_h5write.h5'];
R = rand(3, 4)
h5write(h5filename,'/rand', R);
h5write(h5filename,'/str', 'Hello');
h5dump(h5filename)
```

## 🔗 Voir aussi

[h5read](../hdf5/h5read.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
