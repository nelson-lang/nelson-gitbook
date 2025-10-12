# bandwidth

Largeur de bande inférieure et supérieure d'une matrice.

## Syntaxe

- [lower, upper] = bandwidth(A)
- R = bandwidth(A, type)

## Argument d'entrée

- A - matrice d'entrée
- type - 'upper' ou 'lower'

## Argument de sortie

- lower, upper - largeur de bande inférieure : lower, et largeur de bande supérieure : upper de la matrice A.
- R - largeur de bande inférieure ou supérieure.

## Description

<p>
                        [lower, upper] = bandwidth(A) retourne les largeurs de bande inférieure lower et supérieure upper de la matrice A.</p>

## Exemple

```matlab
M = [10 -20 40; -50 20 0; 10 0 30]
[lower, upper] = bandwidth(M)

```

## Voir aussi

[isbanded](../linear_algebra/isbanded.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
