# roots

Trouver les racines d'un polynôme.

## Syntaxe

- r = roots(p)

## Argument d'entrée

- p - vecteur : coefficients du polynôme

## Argument de sortie

- r - racines

## Description

<p>r = roots(c) trouve les racines du polynôme c. r est un vecteur colonne.</p>

<p>Cette fonction utilise la matrice compagnon du polynôme pour déterminer ses racines.</p>

## Exemple

```matlab

p = [1 0 0 0 -1];
r = roots(p)
```

## Voir aussi

[poly](../polynomial_functions/poly.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
