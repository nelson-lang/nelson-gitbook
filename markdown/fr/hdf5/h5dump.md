# h5dump

vide le contenu d'un fichier HDF5 au format texte.

## 📝 Syntaxe

- h5dump(filename)
- R = h5dump(filename)
- h5dump(filename, location)
- R = h5dump(filename, location)

## 📥 Argument d'entrée

- filename - a string: hdf5 filename.
- location - a string: name of the path to dump.

## 📤 Argument de sortie

- R - une chaîne : vidage du fichier HDF5 au format texte.

## 📄 Description

<b>h5dump</b> affiche le contenu d'un fichier HDF5 au format texte.

## 💡 Exemple

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset2',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
R = h5dump([tempdir(), 'myfile.h5'])
```

## 🔗 Voir aussi

[h5write](../hdf5/h5write.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
