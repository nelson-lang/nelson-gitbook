# isbanded

Détermine si une matrice est dans une largeur de bande spécifique.

## Syntaxe

- tf = isbanded(A, lower, upper)

## Argument d'entrée

- A - matrice d'entrée
- lower, upper - largeur de bande inférieure : lower, et largeur de bande supérieure : upper, de la matrice A.

## Argument de sortie

- tf - logique

## Description

<p>
                        tf = isbanded(A, lower, upper) retourne true si la matrice A est dans la largeur de bande inférieure spécifiée lower et la largeur de bande supérieure upper.</p>

## Exemple

```matlab
M = [1 0 0 0 0; 2 1 0 0 0; 3 2 1 0 0]
TF = isbanded(M, 2, 0)
TF = isbanded(M, 2, 1)

```

## Voir aussi

[bandwidth](../linear_algebra/bandwidth.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
