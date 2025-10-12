# diff

Différences et dérivées approximatives.

## Syntaxe

- Y = diff(X)
- Y = diff(X, n)
- Y = diff(X, n, dim)

## Argument d'entrée

- X - vector or matrix (real or single)
- n - difference order: positive integer scalar or []
- dim - dimension: positive integer scalar

## Argument de sortie

- Y - difference array: vector or matrix.

## Description

<p>Si X est un vecteur de longueur n, le résultat de diff(X) est un vecteur des premières différences X(2) - X(1), ..., X(n) - X(n-1).</p>

<p>Si X est une matrice, le résultat de diff(X) est une matrice des différences de colonnes le long de la première dimension non-singleton.</p>

## Exemple

```matlab
h = .01; x = 0:h:pi;
X = sin(x.^2);
R = diff(X)
```

## Voir aussi

[sum](../linear_algebra/sum.md), [prod](../linear_algebra/prod.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
