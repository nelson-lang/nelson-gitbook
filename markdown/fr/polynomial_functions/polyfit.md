# polyfit

Ajustement polynomiale (polynomial curve fitting).

## Syntaxe

- p = polyfit(x, y, n)

## Argument d'entrée

- x - vecteur : points d'échantillonnage
- y - vecteur : valeurs observées aux points d'échantillonnage
- n - scalaire positif : degré du polynôme d'ajustement

## Argument de sortie

- p - vecteur : coefficients du polynôme d'ajustement par moindres carrés

## Description

<p>p = polyfit(x, y, n) renvoie les coefficients d'un polynôme p(x) de degré n qui réalise le meilleur ajustement (least-squares) des données y.</p>

## Exemple

```matlab

x = linspace(0, 8 * pi, 15);
y = sin(x);
p = polyfit(x, y, 7)
```

## Voir aussi

[roots](../polynomial_functions/roots.md), [poly](../polynomial_functions/poly.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
