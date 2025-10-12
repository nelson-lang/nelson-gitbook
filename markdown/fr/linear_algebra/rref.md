# rref

Élimination de Gauss-Jordan (forme échelonnée réduite).

## Syntaxe

- R = rref(A)
- R = rref(A, tol)
- [R, p] = rref(A)
- [R, p] = rref(A, tol)

## Argument d'entrée

- A - matrice d'entrée (double ou simple précision)
- tol - tolérance : scalaire ou max(rows, cols) _ eps(class(A)) _ norm(A, inf) (par défaut)

## Argument de sortie

- R - une matrice : forme échelonnée réduite de A.
- p - un vecteur : colonnes pivots non nulles.

## Description

<p>
            R = rref(A) retourne la forme échelonnée réduite par lignes de A.</p>

<p>
                [R, p] = rref(A) retourne également les pivots non nuls p.</p>

## Bibliographie

https://en.wikipedia.org/wiki/Gaussian_elimination

## Exemple

```matlab
A = [magic(4), eye(4)]
[R, p] = rref(A)
```

## Voir aussi

[rank](../linear_algebra/rank.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
