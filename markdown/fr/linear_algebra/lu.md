# lu

Factorisation LU d'une matrice.

## 📝 Syntaxe

- [L, U] = lu(A)
- [L, U, P] = lu(A)

## 📥 Argument d'entrée

- A - une matrice : carrée, finie (simple ou double précision).

## 📤 Argument de sortie

- L - Facteur triangulaire inférieur : matrice (même type que A)
- U - Facteur triangulaire supérieur : matrice (même type que A).
- P - Permutation de lignes : matrice (même type que A).

## 📄 Description

<b>[L, U] = lu(A)</b> décompose une matrice pleine <b>A</b> en deux matrices : une matrice triangulaire supérieure <b>U</b> et une matrice triangulaire inférieure permutée <b>L</b>.

Cette factorisation satisfait l'équation <b>A = L \* U</b>.

<b>[L, U, P] = lu(A)</b> : avec trois arguments de sortie, la fonction fournit une matrice de permutation<b>P</b> en plus de la matrice triangulaire inférieure unitaire <b>L</b> et de la matrice triangulaire supérieure <b>U</b>.

Cette factorisation s'exprime comme <b>A = P'LU</b>, où<b>L</b> est triangulaire inférieure unitaire et<b>U</b> est triangulaire supérieure.

## Fonction(s) utilisée(s)

LAPACKE_dgetrf, LAPACKE_sgetrf, LAPACKE_zgetrf, LAPACKE_cgetrf

## 💡 Exemples

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

## 🔗 Voir aussi

[cond](../linear_algebra/cond.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.1.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
