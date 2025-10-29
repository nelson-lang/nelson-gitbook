# blkdiag

Matrice diagonale par blocs

## 📝 Syntaxe

- R = blkdiag(M1, ... , MN)

## 📥 Argument d'entrée

- M1, ..., MN - une matrice numérique 2D

## 📤 Argument de sortie

- R - une matrice.

## 📄 Description

<b>R = blkdiag(M1, ... , MN)</b> construit la matrice diagonale par blocs obtenue en alignant les matrices d'entrée <b>M1, ... , MN</b> le long de la diagonale de <b>R</b>.

## 💡 Exemple

```matlab
blkdiag(magic(2), magic(3), magic(4))
```

## 🔗 Voir aussi

[diag](../constructors_functions/diag.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
