# tril

Lower triangular part of matrix

## Syntaxe

- T = tril(M)
- T = tril(M, k)

## Argument d'entrée

- M - 2D input matrix
- k - Diagonals to include: integer real value

## Argument de sortie

- R - Lower Triangular Portions of Matrix

## Description

<p>
            tril computes Lower Triangular Portions of Matrix.</p>

<p>
                R = tril(M, k) returns the elements on and above the kth diagonal of M.</p>

## Exemple

```matlab
x = [1+i,-i;i,2i];
r = tril(x)
```

## Voir aussi

[diag](../elementary_functions/diag.md), [triu](../elementary_functions/triu.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
