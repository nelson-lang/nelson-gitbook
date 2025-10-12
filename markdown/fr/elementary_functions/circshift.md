# circshift

Rotation circulaire

## Syntaxe

- R = circshift(M, N)
- R = circshift(M, N, DIM)

## Argument d'entrée

- M - une variable
- N - décalage
- DIM - dimension sur laquelle opérer

## Argument de sortie

- R - résultat de 'circshift'.

## Description

<p>
            circshift effectue une rotation circulaire.</p>

## Exemple

```matlab
x = [10, 20, 30; 40, 50, 60; 70, 80, 90];
circshift (x, 1
circshift (x, -2))
```

## Voir aussi

[repmat](../elementary_functions/repmat.md), [reshape](../elementary_functions/reshape.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
