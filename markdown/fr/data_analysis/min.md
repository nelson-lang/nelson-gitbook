# min

Valeurs minimales d'un tableau.

## Syntaxe

- M = min(A)
- [M, I] = min(A)
- M = min(A, [], dim)
- [M, I] = min(A, [], dim)
- M = min(A, [], dim, 'omitnan')
- [M, I] = min(A, [], dim, 'includenan')
- [M, I] = min(A, [], 'all')
- [M, I] = min(A, [], 'all', 'omitnan')
- [M, I] = min(A, [], 'all', 'includenan')
- C = min(A, B)
- C = min(A, B, 'omitnan')
- C = min(A, B, 'includenan')

## Argument d'entrée

- A - une variable
- dim - entier positif scalaire (dimension le long de laquelle opérer)
- 'omitnan' - ignore toutes les valeurs NaN. comportement par défaut. min renverra le premier élément si tous les éléments sont NaN.
- 'includenan' - inclut les valeurs NaN.
- 'all' - trouve le minimum sur tous les éléments.

## Argument de sortie

- M - Valeurs minimales de A.
- I - Indices des valeurs minimales de A.
- C - Éléments minimaux de A ou B.

## Description

<p>
        min trouve les valeurs minimales dans un tableau.</p>

<p>Si A est une matrice alors M = min(A) est un vecteur ligne contenant la valeur minimale de chaque colonne.</p>

<p>Si A est un vecteur alors M = min(A) renverra le minimum de A.</p>

<p>Si A est un nombre complexe alors M = min(A) renverra le nombre complexe ayant la plus grande magnitude.</p>

## Exemple

```matlab
A = [1 2 3; 4 5 6];
M = min(A)
M = min(A, [], 'all')
```

## Voir aussi

[max](../data_analysis/max.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
