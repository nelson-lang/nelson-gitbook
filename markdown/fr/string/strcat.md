# strcat

concatène des chaînes horizontalement.

## 📝 Syntaxe

- res = strcat(s1, s2, ..., sN)

## 📥 Argument d'entrée

- s1, s2, ..., sN - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📤 Argument de sortie

- res - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📄 Description

<b>strcat</b> concatène les chaînes horizontalement.

Si toutes les entrées sont des tableaux de caractères, alors <b>res</b> est un tableau de caractères.

Si une entrée est un tableau de chaînes, alors <b>res</b> est un tableau de chaînes.

Si une entrée est un tableau de cellules, et qu'aucune n'est un tableau de chaînes, alors <b>res</b> est un tableau de cellules de vecteurs de caractères.

Pour les entrées de tableau de cellules et de chaînes, <b>strcat</b> ne supprime pas les espaces blancs à la fin.

Pour les entrées de tableau de caractères, <b>strcat</b> supprime les caractères d'espacement ASCII à la fin.

## 💡 Exemple

```matlab
strcat("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = strcat(A, B)
```

## 🔗 Voir aussi

[append](../string/append.md), [join](../string/join.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
