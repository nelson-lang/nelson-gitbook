# whomat

Liste les variables d'un fichier .mat valide.

## 📝 Syntaxe

- whomat(filename)
- ce = whomat(filename)
- whomat(filename, var1, ..., varN)
- ce = whomat(filename, var1, ..., varN)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier .mat.
- var1, ..., varN - une chaîne : noms des variables à inspecter.

## 📤 Argument de sortie

- ce - cellule de chaînes contenant les noms des variables.

## 📄 Description

<b>whomat</b> liste les variables d'un fichier .mat valide.

## 📚 Bibliographie

Remerciements à la bibliothèque MATIO (http://sourceforge.net/projects/matio/).

## 💡 Exemple

```matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savemat([tempdir(), 'example_whomat-v7.3.mat'], 'A', 'B', 'C', 'D', '-v7.3')
whomat([tempdir(), 'example_whomat-v7.3.mat'])
ce = whomat([tempdir(), 'example_whomat-v7.3.mat'])
```

## 🔗 Voir aussi

[whonh5](../hdf5/whonh5.md), [who](../memory_manager/who.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
