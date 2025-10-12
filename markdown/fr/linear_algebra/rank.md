# rank

Rang d'une matrice.

## Syntaxe

- r = rank(A)
- r = rank(A, tol)

## Argument d'entrée

- A - matrice : double ou simple précision
- tol - tolérance

## Argument de sortie

- r - une valeur numérique : un scalaire.

## Description

<p>
                        rank(A) retourne le nombre de colonnes linéairement indépendantes d'une matrice (rang de la matrice).</p>

## Exemple

```matlab
X = rand(10, 10);
r = rank(X)
```

## Voir aussi

[svd](../linear_algebra/svd.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
