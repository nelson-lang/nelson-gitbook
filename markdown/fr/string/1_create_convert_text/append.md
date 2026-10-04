# append

concatène des chaînes horizontalement.

## 📝 Syntaxe

- res = append(s1, s2, ..., sN)

## 📥 Argument d'entrée

- s1, s2, ..., sN - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📤 Argument de sortie

- res - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📄 Description

<b>strcat</b> concatène les chaînes horizontalement.

Si toutes les entrées sont des tableaux de caractères, alors<b>res</b> est un tableau de caractères.

Si une entrée est un tableau de chaînes, alors<b>res</b> est un tableau de chaînes.

Si une entrée est une cellule et qu'aucune n'est un tableau de chaînes, alors<b>res</b> est une cellule de vecteurs de caractères.

<b>append</b> ne supprime pas les espaces finaux.

## 💡 Exemple

```matlab
append("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = append(A, B)
```

## 🔗 Voir aussi

[strcat](../../string/strcat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
