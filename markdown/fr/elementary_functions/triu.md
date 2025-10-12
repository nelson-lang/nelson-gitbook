# triu

Upper triangular part of matrix

## Syntaxe

- T = triu(M)
- T = triu(M, k)

## Argument d'entrée

- M - 2D input matrix
- k - Diagonals to include: integer real value

## Argument de sortie

- R - Upper Triangular Portions of Matrix

## Description

<p>
            triu computes Upper Triangular Portions of Matrix.</p>

<p>
                R = triu(M, k) returns the elements on and above the kth diagonal of M.</p>

## Exemple

```matlab
x = [1+i,-i;i,2i];
r = triu(x)
```

## Voir aussi

[diag](../elementary_functions/diag.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
