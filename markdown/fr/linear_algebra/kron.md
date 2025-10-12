# kron

Produit tensoriel de Kronecker.

## Syntaxe

- K = kron(A, B)

## Argument d'entrée

- A - une matrice : scalaires, vecteurs ou matrices.
- B - une matrice : scalaires, vecteurs ou matrices.

## Argument de sortie

- K - résultat : produit tensoriel de Kronecker.

## Description

<p>
                        K = kron(A, B) calcule le produit tensoriel de Kronecker des matrices A et B.</p>

## Bibliographie

https://en.wikipedia.org/wiki/Kronecker_product

## Exemple

```matlab
A = [1, 2; 3, 4];
B = [0, 5; 6, 7];
K = kron(A, B)

```

## Voir aussi

[cross](../special_functions/cross.md), [hankel](../elementary_functions/hankel.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
