# strcmpi

Comparaison de chaînes (insensible à la casse).

## 📝 Syntaxe

- res = strcmpi(s1, s2)

## 📥 Argument d'entrée

- s1 - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- s2 - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📤 Argument de sortie

- res - un booléen : vrai si les deux sont identiques (insensible à la casse), sinon faux.

## 📄 Description

<b>strcmpi</b> compares two strings (case insensitive).

## 💡 Exemple

```matlab
strcmpi('Nelson', 'nelSon')
strcmpi('Nelson', 'Nelson')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strcmpi(A, B)
strcmpi(A, C)
strcmpi(C, 'C')

```

## 🔗 Voir aussi

[char](../string/char.md), [strcmp](../string/strcmp.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
