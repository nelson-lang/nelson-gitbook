# chol

Factorisation de Cholesky.

## Syntaxe

- F = chol(A)

## Argument d'entrée

- A - une matrice : carrée et définie positive (symétrique définie positive).

## Argument de sortie

- F - Cholesky factor.

## Description

<p>
                        F = chol(A) factorise la matrice symétrique définie positive A en une matrice triangulaire supérieure F telle que A = F' * F.</p>

## Exemple

```matlab
A = [10 0 10; 0 20 0; 10 0 30];
F = chol(A)

```

## Voir aussi

[det](../linear_algebra/det.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
