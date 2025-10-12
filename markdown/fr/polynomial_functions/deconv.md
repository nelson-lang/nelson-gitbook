# deconv

Déconvolution et division polynomiale.

## Syntaxe

- [q, r] = deconv(b, a)

## Argument d'entrée

- a - vecteurs ligne ou colonne
- b - vecteurs ligne ou colonne

## Argument de sortie

- q - quotient : vecteur ligne ou colonne
- r - reste : vecteur ligne ou colonne

## Description

<p>[q, r] = deconv(b, a) effectue la déconvolution du vecteur b par le vecteur a en utilisant la division longue.</p>

<p>Elle renvoie le quotient q et le reste r tels que b = conv(a, q) + r.</p>

<p>Dans le contexte des coefficients polynomiaux, la déconvolution des vecteurs b et a revient à diviser le polynôme représenté par b par celui représenté par a.</p>

## Exemple

```matlab

b = [1; 2; -1];  % Dividend (x^2 + 2x - 1)
a = [1; 1];      % Divisor (x + 1)

[q, r] = deconv(b, a)
```

## Voir aussi

[conv](../data_analysis/conv.md), [poly](../polynomial_functions/poly.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.3.0   | version initiale |

## Auteur

Allan CORNET
