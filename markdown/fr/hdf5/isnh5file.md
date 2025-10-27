# isnh5file

Vérifie si le nom de fichier est un fichier .nh5 valide

## 📝 Syntaxe

- tf = isnh5file(filename)
- [tf, version, header] = isnh5file(filename)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier .nh5.

## 📤 Argument de sortie

- tf - un booléen : vrai si c'est un fichier .nh5 valide.
- version - un tableau de chaînes : "-v1" ou "" si non défini.
- header - un tableau de chaînes : en-tête du fichier nh5 (date de création).

## 📄 Description

<b>isnh5file</b> vérifie si le nom de fichier correspond à un fichier .nh5 valide.

## 💡 Exemple

```matlab
A = ones(3, 4);
savemat([tempdir(), 'example_isnh5.mat'], 'A')
R = isnh5file([tempdir(), 'example_isnh5.mat'])
h5save([tempdir(), 'example_isnh5.nh5'], 'A')
[R, VER, HE] = isnh5file([tempdir(), 'example_isnh5.nh5'])
```

## 🔗 Voir aussi

[ismatfile](../matio/ismatfile.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
