# poly

Polynôme à partir de racines ou polynôme caractéristique.

## Syntaxe

- p = poly(r)
- p = poly(A)

## Argument d'entrée

- r - vecteur : racines du polynôme
- A - matrice : matrice d'entrée

## Argument de sortie

- p - vecteur ligne : coefficients du polynôme

## Description

<p>Si A est une matrice carrée, p = poly(A) calcule un vecteur ligne de n+1 éléments correspondant aux coefficients du polynôme caractéristique.</p>

<p>Si r est un vecteur, p = poly(r) calcule un vecteur ligne contenant les coefficients du polynôme dont les racines sont les éléments de r.</p>

## Exemple

```matlab

A = [1    2    3;
4    5    6;
7    8    1];
p = poly(A)
```

## Voir aussi

[conv](../data_analysis/conv.md), [roots](../polynomial_functions/roots.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
