# ismatrix

determines whether input is matrix or not

## Syntaxe

- TF = ismatrix(A)

## Argument d'entrée

- A - input array as a scalar, vector, matrix, or multidimensional array.

## Argument de sortie

- TF - a logical: true if it is a matrix.

## Description

<p>
            TF = ismatrix(A) returns true if A is a matrix.</p>

<p>A matrix is a two-dimensional array that has a size of m-by-n, where m and n are nonnegative integers.</p>

## Exemple

```matlab
x = [1+i,-i;i,2i];
ismatrix(x)
ismatrix(ones(3,1,2))
```

## Voir aussi

[isvector](../elementary_functions/isvector.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
