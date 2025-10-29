# strcmp

Comparaison de chaînes.

## 📝 Syntaxe

- res = strcmp(s1, s2)

## 📥 Argument d'entrée

- s1 - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- s2 - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📤 Argument de sortie

- res - un booléen : vrai si les deux sont identiques, faux sinon.

## 📄 Description

<b>strcmp</b> compare deux chaînes.

## 💡 Exemple

```matlab
strcmp('Nelson', 'nelSon')
strcmp('Nelson', 'Nelson')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strcmp(A, B)
strcmp(A, C)
strcmp(C, 'C')

```

## 🔗 Voir aussi

[char](../string/char.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
