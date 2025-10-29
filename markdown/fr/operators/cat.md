# cat

Concatène des tableaux.

## 📝 Syntaxe

- R = cat(dim, A, B)
- R = cat(dim, A1, A2, ..., An)

## 📥 Argument d'entrée

- dim - Dimension sur laquelle opérer : entier positif scalaire.
- A - variable : premier argument.
- B - variable : deuxième argument.
- A1, A2, ..., An - Liste d'arguments à concaténer

## 📤 Argument de sortie

- R - tableau concaténé

## 📄 Description

<b>R = cat(dim, M1, M2, ... , MN)</b> renvoie la concaténation de M1, M2, ... , MN le long de la dimension <b>dim</b>.

## 💡 Exemple

```matlab
A = eye(2, 2);
B = ones(2, 2);
C = cat(2, A, B)
```

## 🔗 Voir aussi

[vertcat](../operators/vertcat.md), [horzcat](../operators/horzcat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
