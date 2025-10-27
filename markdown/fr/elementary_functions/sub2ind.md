# sub2ind

Matrix subscript values to linear index

## 📝 Syntaxe

- ind = sub2ind(sz, row, col)
- ind = sub2ind(sz, I1, I2, ..., In)

## 📥 Argument d'entrée

- sz - size of array: vector of positive integers.
- row - row subscripts.
- col - column subscripts.
- I1, I2, ..., In - multidimensional subscripts.

## 📤 Argument de sortie

- ind - linear indices.

## 📄 Description

<b>ind2sub</b> converts subscripts to linear indices. .

## 💡 Exemple

```matlab
row = [2 3 4 2];
col = [2 2 2 3];
sz = [3 3];
ind = sub2ind(sz, row, col)
```

## 🔗 Voir aussi

[ind2sub](../elementary_functions/sub2ind.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
