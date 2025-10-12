# shiftdim

Shift array dimensions

## Syntaxe

- B = shiftdim(A, n)
- B = shiftdim(A)
- [B, m] = shiftdim(A)

## Argument d'entrée

- A - Input array: vector, matrix or multidimensional array.
- n - Number of positions: integer value.

## Argument de sortie

- B - vector, matrix, or multidimensional array.
- m - Number of dimensions removed: non-negative integer.

## Description

<p>
            shiftdim(A, n) reorganizes the dimensions of an array A by n positions.</p>

<p>Specifically, when n is a positive integer, it shifts the dimensions to the left, and when n is a negative integer, it shifts the dimensions to the right.</p>

## Exemple

```matlab
A = rand(2, 3, 4);
size(A)
% Shift the dimensions of array A by 2 positions to the left
B = shiftdim(A, 2)
```

## Voir aussi

[permute](../elementary_functions/permute.md), [reshape](../elementary_functions/reshape.md), [squeeze](../elementary_functions/round.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.3.0   | version initiale |

## Auteur

Allan CORNET
