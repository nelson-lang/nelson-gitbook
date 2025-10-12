# max

Valeurs maximales d'un tableau.

## Syntaxe

- M = max(A)
- [M, I] = max(A)
- M = max(A, [], dim)
- [M, I] = max(A, [], dim)
- M = max(A, [], dim, 'omitnan')
- [M, I] = max(A, [], dim, 'includenan')
- [M, I] = max(A, [], 'all')
- [M, I] = max(A, [], 'all', 'omitnan')
- [M, I] = max(A, [], 'all', 'includenan')
- C = max(A, B)
- C = max(A, B, 'omitnan')
- C = max(A, B, 'includenan')

## Argument d'entrée

- A - une variable
- dim - entier positif scalaire (dimension le long de laquelle opérer)
- 'omitnan' - ignore toutes les valeurs NaN. comportement par défaut. max renverra le premier élément si tous les éléments sont NaN.
- 'includenan' - inclut les valeurs NaN.
- 'all' - trouve le maximum sur tous les éléments.

## Argument de sortie

- M - Valeurs maximales de A.
- I - Indices des valeurs maximales de A.
- C - Éléments maximums de A ou B.

## Description

<p>
        max trouve les valeurs maximales dans un tableau.</p>

<p>Si A est une matrice alors M = max(A) est un vecteur ligne contenant la valeur maximale de chaque colonne.</p>

<p>Si A est un vecteur alors M = max(A) renverra le maximum de A.</p>

<p>Si A est un nombre complexe alors M = max(A) renverra le nombre complexe ayant la plus grande magnitude.</p>

## Exemple

```matlab
A = [1 2 3; 4 5 6];
M = max(A)
M = max(A, [], 'all')
```

## Voir aussi

[min](../data_analysis/min.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
