# balance

Mise à l'échelle diagonale pour améliorer la précision des valeurs propres.

## Syntaxe

- B = balance(A)
- B = balance(A,'noperm')
- [T, B] = balance(A)
- [S, P, B] = balance(A)

## Argument d'entrée

- A - une matrice carrée, finie (simple ou double précision).

## Argument de sortie

- B - matrice équilibrée.
- T - transformation de similarité : réarrange les éléments d'une matrice diagonale contenant des puissances entières de deux afin de minimiser l'impact des erreurs d'arrondi.
- S - vecteur d'échelle
- P - vecteur de permutation

## Description

<p>
            B = balance(A) retourne la matrice équilibrée B.</p>

<p>
                B = balance(A, 'noperm') met à l'échelle A sans permuter ses lignes et colonnes.</p>

## Fonction(s) utilisée(s)

LAPACKE_dgebal, LAPACKE_sgebal, LAPACKE_zgebal, LAPACKE_cgebal

## Exemple

```matlab
A = [10  1000  100000; .1  10  1000; .001  .1  10]
F = balance(A)

```

## Voir aussi

[eig](../linear_algebra/eig.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
