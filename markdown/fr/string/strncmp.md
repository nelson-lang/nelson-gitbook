# strncmp

Compare les n premiers caractères des chaînes.

## 📝 Syntaxe

- res = strncmp(s1, s2, n)

## 📥 Argument d'entrée

- s1 - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- s2 - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- n - un entier : nombre de caractères à comparer.

## 📤 Argument de sortie

- res - un booléen : vrai si les deux sont identiques, sinon faux.

## 📄 Description

<b>strncmp</b> compare les n premiers caractères de deux chaînes (sensible à la casse).

## 💡 Exemple

```matlab
strncmp('Nelson', 'nelSon', 3)
strncmp('Nelson', 'Nelson', 3)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strncmp(A, B, 2)
strncmp(A, C, 2)
strncmp(C, 'C', 4)

```

## 🔗 Voir aussi

[strcmp](../string/strcmp.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
