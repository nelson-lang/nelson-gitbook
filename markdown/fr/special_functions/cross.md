# cross

Produit vectoriel.

## Syntaxe

- R = cross(A, B)
- R = cross(A, B, dim)

## Argument d'entrée

- A, B - tableaux numériques.
- dim - scalaire entier positif : Dimension le long de laquelle opérer.

## Argument de sortie

- R - Produit vectoriel.

## Description

<p>
            R = cross(A, B) retourne le produit vectoriel de A et B.</p>

## Bibliographie

https://en.wikipedia.org/wiki/Cross_product

## Exemple

```matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = cross(A, B)
R = cross(A, B, 2)
```

## Voir aussi

[dot](../special_functions/dot.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
