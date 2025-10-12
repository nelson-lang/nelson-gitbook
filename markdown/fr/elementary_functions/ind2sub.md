# ind2sub

Convertir un indice linéaire en indices de sous-script

## Syntaxe

- [row, col] = ind2sub(sz, ind)
- [I1, I2, ..., In] = ind2sub(sz, ind)

## Argument d'entrée

- sz - taille du tableau : vecteur d'entiers positifs.
- ind - indices linéaires.

## Argument de sortie

- row - row subscripts.
- col - column subscripts.
- I1, I2, ..., In - multidimensional subscripts.

## Description

<p>
              ind2sub convertit des indices linéaires en indices de sous-scripts pour un tableau de taille S.</p>

## Exemple

```matlab
ind = [4 5 6 7];
sz = [4 4];
[row,col] = ind2sub(sz,ind)
```

## Voir aussi

[sub2ind](../elementary_functions/sub2ind.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
