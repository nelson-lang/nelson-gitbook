# toeplitz

Toeplitz matrix

## Syntaxe

- T = toeplitz(c, r)
- T = toeplitz(r)

## Argument d'entrée

- c - a scalar or vector: column of Toeplitz matrix.
- r - a scalar or vector: row of Toeplitz matrix.

## Argument de sortie

- T - Toeplitz matrix.

## Description

<p>
            T = toeplitz(c, r) returns the Toeplitz matrix whose first row is r and first column is c.</p>

<p>
                T = toeplitz(c) returns the symmetric Toeplitz matrix.</p>

## Bibliographie

https://en.wikipedia.org/wiki/Toeplitz_matrix

## Exemple

```matlab
T = toeplitz(1:5, 1:2:7)
```

## Voir aussi

[hankel](../elementary_functions/hankel.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
