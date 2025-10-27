# strlength

Longueur des chaînes dans un tableau ou une cellule de chaînes.

## 📝 Syntaxe

- len = strlength(ce)

## 📥 Argument d'entrée

- ce - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📤 Argument de sortie

- len - une matrice d'entiers : longueurs des chaînes.

## 📄 Description

<b>strlength</b> renvoie la longueur des chaînes.

## 💡 Exemple

```matlab

str = 'To make a mountain out of a molehill';
k = strlength(str)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strlength(A)

B = ["Nel", NaN, "son"; "is", "open", "source"];
k = strlength(B)

```

## 🔗 Voir aussi

[strcmp](../string/strcmp.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
