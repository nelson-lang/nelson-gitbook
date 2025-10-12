# blackman

Fenêtre de Blackman.

## Syntaxe

- c = blackman(m)
- c = blackman(m, opt)

## Argument d'entrée

- m - entier positif : longueur de la fenêtre
- opt - chaîne : 'symetric' (par défaut) ou 'periodic'

## Argument de sortie

- c - vecteur colonne

## Description

<p>
            c = blackman(m) calcule les coefficients d'une fenêtre de Blackman de longueur m.</p>

## Bibliographie

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

## Exemple

```matlab
c = blackman(8)
c = blackman(8, 'periodic')
```

## Voir aussi

[hamming](../signal_processing/hamming.md), [hann](../signal_processing/hann.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
