# loadnh5

charge des données depuis un fichier .nh5 dans l'espace de travail de Nelson.

## 📝 Syntaxe

- loadnh5(filename)
- st = loadnh5(filename)
- loadnh5(filename, var1, ..., varN)
- st = loadnh5(filename, var1, ..., varN)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier .nh5.
- var1, ..., varN - chaînes : noms des variables à charger dans l'espace de travail de Nelson.

## 📤 Argument de sortie

- st - une structure avec les noms des variables comme champs.

## 📄 Description

<b>loadnh5</b> charge des données d'un fichier .nh5 dans l'espace de travail de Nelson.

Le fichier .nh5 utilise un conteneur HDF5.

## 💡 Exemple

```matlab
A = ones(3, 4);
B = 'hello for open mat users';
savenh5([tempdir(), 'example_h5load.nh5'], 'A', 'B')
clear;
st = loadnh5([tempdir(), 'example_h5load.nh5']);
who
st.A
st.B
clear
who
loadnh5([tempdir(), 'example_h5load.nh5']);
who
A
B
```

## 🔗 Voir aussi

[savenh5](../hdf5/savenh5.md), [h5read](../hdf5/h5read.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
