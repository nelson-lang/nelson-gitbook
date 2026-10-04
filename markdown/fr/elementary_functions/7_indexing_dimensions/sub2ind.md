# sub2ind

Indices d'une matrice vers un indice linéaire

## 📝 Syntaxe

- ind = sub2ind(sz, row, col)
- ind = sub2ind(sz, I1, I2, ..., In)

## 📥 Argument d'entrée

- sz - taille du tableau : vecteur d'entiers positifs.
- row - indices de ligne.
- col - indices de colonne.
- I1, I2, ..., In - indices multidimensionnels.

## 📤 Argument de sortie

- ind - indices linéaires.

## 📄 Description

<b>sub2ind</b> convertit des indices en indices linéaires.

## 💡 Exemple

```matlab
row = [2 3 4 2];
col = [2 2 2 3];
sz = [3 3];
ind = sub2ind(sz, row, col)
```

## 🔗 Voir aussi

[ind2sub](../../elementary_functions/sub2ind.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
