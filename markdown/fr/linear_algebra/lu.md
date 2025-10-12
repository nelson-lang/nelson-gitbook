# lu

Factorisation LU d'une matrice.

## Syntaxe

- [L, U] = lu(A)
- [L, U, P] = lu(A)

## Argument d'entrée

- A - une matrice : carrée, finie (simple ou double précision).

## Argument de sortie

- L - Facteur triangulaire inférieur : matrice (même type que A)
- U - Facteur triangulaire supérieur : matrice (même type que A).
- P - Permutation de lignes : matrice (même type que A).

## Description

<p>
            [L, U] = lu(A) décompose une matrice pleine A en deux matrices : une matrice triangulaire supérieure U et une matrice triangulaire inférieure permutée L.</p>

<p>Cette factorisation satisfait l'équation A = L * U.</p>

<p>
                [L, U, P] = lu(A) : avec trois arguments de sortie, la fonction fournit une matrice de permutation P en plus de la matrice triangulaire inférieure unitaire L et de la matrice triangulaire supérieure U.</p>

<p>Cette factorisation s'exprime comme A = P'LU, où L est triangulaire inférieure unitaire et U est triangulaire supérieure.</p>

## Fonction(s) utilisée(s)

LAPACKE_dgetrf, LAPACKE_sgetrf, LAPACKE_zgetrf, LAPACKE_cgetrf

## Exemples

```matlab
A = magic(5)
[L, U] = lu(A)
L * U

```

```matlab
A = magic(5)
[L, U, P] = lu(A);
subplot(1, 2, 1)
spy(L)
title(_('L factor'))
subplot(1, 2, 2)
spy(U)
title(_('U factor'))

```

<img src="lu.svg" align="middle"/>

## Voir aussi

[cond](../linear_algebra/cond.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.1.0   | version initiale |

## Auteur

Allan CORNET
