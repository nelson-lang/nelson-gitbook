# reshape

Reshapes a vector or a matrix to a different size matrix.

## 📝 Syntaxe

- M2 = reshape(M1, s1, ... ,sN)
- M2 = reshape(M1, ..., [], ...)
- M2 = reshape(M1, size)

## 📥 Argument d'entrée

- M1 - a vector or an matrix
- size - a size vector
- s1, ... ,sN - a s1 - by - ... - by - sN array where s1, ..., sN indicates the size of each dimension.

## 📤 Argument de sortie

- M2 - Matrix reshaped

## 📄 Description

<b>reshape</b> performs a reshape to a different size matrix. If only one dimension is specified,<b>reshape</b> will determine complementary size automatically. [ ] is used to unspecify the dimension.

## 💡 Exemple

```matlab
M1 = ones(3, 4, 5);
M2 = reshape(M1, [5, 3, 4])
M2 = reshape(M1, 5, [], 4)

```

## 🔗 Voir aussi

[colon](../elementary_functions/colon.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
